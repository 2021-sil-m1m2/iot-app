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
    # DynamoDBのテーブル名
    table = dynamoDB.Table("Record-xibjj6hukfd3ho5cevbiejggje-dev")
    
    table.put_item(
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
    return event
