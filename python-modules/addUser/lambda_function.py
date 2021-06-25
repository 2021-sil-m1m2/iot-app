import boto3
import uuid

def lambda_handler(event, context):
    dynamoDB = boto3.resource("dynamodb")
    # DynamoDBのテーブル名
    table = dynamoDB.Table("User-ci4prgfbfrbh3ars35zuitriqu-dev")
    
    table.put_item(
      Item = {
        "id": str(uuid.uuid4()),
#        "username": event['userName'],
        "username": event['request']['userAttributes']['email']
#        "planterID": "Not set"
      }
    )
    
    # Return to Amazon Cognito
    return event
