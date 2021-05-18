import boto3
import uuid

def lambda_handler(event, context):
    dynamoDB = boto3.resource("dynamodb")
    # DynamoDBのテーブル名
    table = dynamoDB.Table("User-hw5ptmnfgvafrhxywx4qeoa3cm-dev")
    
    table.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "username": event['userName'],
        "planterID": "Not set"
      }
    )
    
    # Return to Amazon Cognito
    return event
