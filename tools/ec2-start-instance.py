import sys
import boto3
from botocore.exceptions import ClientError

instance_id = sys.argv[2]
action = sys.argv[1].upper()

ec2 = boto3.client('ec2')


if action == 'ON':
    # Do a dryrun first to verify permissions
    try:
        ec2.start_instances(InstanceIds=[instance_id], DryRun=True)
    except ClientError as e:
        # DryRun will output the following message:
        # An error occurred (DryRunOperation) when 
        # calling the StartInstances operation: Request
        # would have succeeded, but DryRun flag is set.
        if 'DryRunOperation' not in str(e):
            raise

    try:
        response = ec2.start_instances(InstanceIds=[instance_id], DryRun=False)
        print(response)
    except ClientError as e:
        print(e)
elif action == 'OFF'
    # Do a dryrun first to verify permissions
    try:
        ec2.stop_instanecs(InstanceIds=[instance_id], DryRune=True)
    except ClientError as e:
        if 'DryRunOperation' not in str(e):
            raise
    
    # Dry runsucceeded, call stop_instances without dryrun
    try:
        response = ec2.stop_instances(InstancesIds=[instance_id], DryRun=False)
        print(response)
    except ClientError as e:
        print(e)
else:
    raise("Wrong parameters")
