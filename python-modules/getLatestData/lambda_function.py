import boto3
import json
import decimal
from boto3.dynamodb.conditions import Key

dynamodb = boto3.resource('dynamodb')
table    = dynamodb.Table('Record-ci4prgfbfrbh3ars35zuitriqu-dev')

def run(event, context):

    res = table.query(
            KeyConditionExpression=Key('planterID').eq("test_planter")
        )

    return_response = max(res["Items"], key=(lambda x:x["date"]))

    return json.dumps(return_response, default=decimal_default)

def decimal_default(obj):
    if isinstance(obj, decimal.Decimal):
        return float(obj)
    raise TypeError
