import json
import urllib.request
import boto3

# function that downloads the file from a public URL and uploads to the S3 location specified in paramter 
def download_file_to_s3 (file_url, bucket_name, target_file_name):
    # download from web to a temp file 
    tmp_file_name = '/tmp/tempfile.csv'
    urllib.request.urlretrieve(file_url, tmp_file_name)
    # print("temp file success")
    # upload file to S3 
    s3_resource = boto3.client('s3')
    s3_resource.upload_file(Filename=tmp_file_name, Bucket=bucket_name, Key=target_file_name)
    print("Successfully uploaded" + target_file_name + " to S3")

def lambda_handler(event, context):
    print("US Census Data file")
    download_file_to_s3 (file_url='https://github.com/PacktPublishing/Interactive-Dashboards-with-Amazon-QuickSight/raw/master/miniproject/data/USACensusbyZip.csv', 
    bucket_name='quicksight-mini-project2', target_file_name='us_census_raw/USACensusbyZip.csv')
    print("Voter Data files")
    download_file_to_s3 (file_url='https://github.com/PacktPublishing/Interactive-Dashboards-with-Amazon-QuickSight/raw/master/miniproject/data/vrdb01.csv', 
    bucket_name='quicksight-mini-project2', target_file_name='voter_raw/vrdb01.csv')
    # print("Hello from Lambda! third file")
    download_file_to_s3 (file_url='https://github.com/PacktPublishing/Interactive-Dashboards-with-Amazon-QuickSight/raw/master/miniproject/data/vrdb02_12.csv', 
    bucket_name='quicksight-mini-project2', target_file_name='voter_raw/vrdb02_12.csv')
    # print("Hello from Lambda! fourth file")
    download_file_to_s3 (file_url='https://github.com/PacktPublishing/Interactive-Dashboards-with-Amazon-QuickSight/raw/master/miniproject/data/vrdb13_20.csv', 
    bucket_name='quicksight-mini-project2', target_file_name='voter_raw/vrdb13_20.csv')

    return {
        'statusCode': 200,
        'body': json.dumps('File Successfully loaded to S')
    }