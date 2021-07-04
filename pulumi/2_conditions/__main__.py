"""An AWS Python Pulumi program"""

import pulumi
from pulumi_aws import s3

# Create an AWS resource (S3 Bucket)
config = pulumi.Config();
color = config.require('color');
for i in range(3):
    if color == 'red':
        bucket = s3.Bucket('my-bucket-rose')
    elif color =='blue':
        bucket = s3.Bucket('my-bucket-tulip')
    else:
        bucket = s3.Bucket('my-bucket-no-flower')

# Export the name of the bucket
pulumi.export('bucket_name', bucket.id)
