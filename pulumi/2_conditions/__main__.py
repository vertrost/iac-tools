"""An AWS Python Pulumi program"""

import pulumi
from pulumi_aws import s3

# Create an AWS resource (S3 Bucket)
config = pulumi.Config();
color = config.require('color');
for i in range(3):
    if color == 'red':
        bucket = s3.Bucket('my-bucket-rose' + '-' + str(i))
    elif color =='blue':
        bucket = s3.Bucket('my-bucket-tulip' + '-' + str(i))
    else:
        bucket = s3.Bucket('my-bucket-no-flower' + '-' + str(i))

# Export the name of the bucket
pulumi.export('bucket_name', bucket.id)
