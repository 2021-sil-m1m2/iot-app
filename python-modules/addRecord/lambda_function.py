import boto3
import uuid

def lambda_handler(event, context):
    dynamoDB = boto3.resource("dynamodb")
    # DynamoDBのテーブル名
    table = dynamoDB.Table("Record-ci4prgfbfrbh3ars35zuitriqu-dev")
    
    table.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "date": event["date"],
        "planterID": event["planterID"],
        "temperature": event["temperature"],
        "humidity": event["humidity"],
        "weight": event["weight"]
      }
    )
    
    # Return to Amazon Cognito
    return event
