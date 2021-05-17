import boto3
import uuid
def lambda_handler(event, context):
    dynamoDB = boto3.resource("dynamodb")
    # DynamoDBのテーブル名
    table = dynamoDB.Table("User-sfjkyk7wzrde3fuqfc5vpuuc3i-okada")
    table.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "username": event['userName'],
        "planterID": "Not set"
      }
    )
    # Return to Amazon Cognito
    return event
