import boto3
import base64
import uuid

def convert_b64_string_to_bynary(s):
    """base64をデコードする"""
    return base64.b64decode(s.encode("UTF-8"))

def lambda_handler(event, context):
    # requestbodeyの中のjsonはeventに辞書型に変化されて保存されている
    # なので、eventの中には {"mypng": "base64でエンコードされた文字列"}が入力される想定。
    base_64ed_image = event['image']
    # バケット作成を作成してbynary変換して保存する。
    s3 = boto3.resource('s3')
    bucket = s3.Bucket('iotapp75cbbde9a1354bf88b57cc80c8a178a4223506-dev')
    bucket.put_object(
                    #Key=f'{uuid.uuid4()}.jpg',
                    Key=event['planterID']+f'/{uuid.uuid4()}.jpg',
                    Body=convert_b64_string_to_bynary(base_64ed_image),
                    ContentType='image/jpg')
    # とりあえずOKを返す。
    return {'statusCode': 200}
