import boto3
import uuid
from decimal import Decimal

def float_to_decimal(obj):
    if isinstance(obj, float):
        # note: str casting is important for dynamodb
        return Decimal(str(obj))
    return obj
        
def lambda_handler(event, context):
    dynamoDB = boto3.resource("dynamodb")
    currenttable = dynamoDB.Table("Current-gx3gx7nehzbfpn6rydugkinovu-dev")
    delete_id = ""
    # 削除するidを取得する
    response = currenttable.scan()
#    #getItem同様、辞書型の情報が取得される
#    print(response)
    # 取得レコードは"item"ではなく"items"!
    items = response['Items']
    # 複数件取れるインターフェイスのためlistオブジェクトが格納されている
    # 取得結果なしの場合は、0件のlistが取得される
    for item in items:
        if item['planterID'] == event['planterID']:
            print("このrecordを削除します")
            print(item['id'])
            print(item['planterID'])
            delete_id = item['id']

    # delete_idのrecordを削除する
    if delete_id != "":
        currenttable.delete_item(
            Key={
                'id': delete_id,
                'planterID': event['planterID']
            }
        )

    # Recordテーブルへの追加
    # DynamoDBのテーブル名
    recordtable = dynamoDB.Table("Record-gx3gx7nehzbfpn6rydugkinovu-dev")
    recordtable.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "date": event["date"],
        "planterID": event["planterID"],
        "temperature": float_to_decimal(event["temperature"]),
        "humidity": float_to_decimal(event["humidity"]),
        "moisture": float_to_decimal(event["moisture"])
      }
    )
    
    # Currentテーブルへの追加
    currenttable.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "date": event["date"],
        "planterID": event["planterID"],
        "temperature": float_to_decimal(event["temperature"]),
        "humidity": float_to_decimal(event["humidity"]),
        "moisture": float_to_decimal(event["moisture"])
      }
    )
    
    
    # Return to Amazon Cognito
    return

