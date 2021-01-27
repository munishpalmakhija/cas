# Purpose 

This Blueprint(s) uses AWS components to deploy required resources to forward S3 Bucket logs & events to vRealize Log Insight Cloud when new S3 object is created in the bucket.  

# Pre-requisities 

You need to have following configuration in your vRA Cloud environment

1.	Amazon Web Service (AWS) cloud account for account regions where you will deploy AWS Lambda.
	- PowerUser role should be enough for creating the required resources. 
2.	AWS IAM role which has Lambda Service 
	-	It needs to exist and provided as Deployment Input
3.	Source S3 Bucket.
	-	You will need to download the Lambda.zip from Github to S3 Bucket. 
4.	Target S3 Bucket(s) for which you want to forward logs & events.
	-	It needs to exist and provided as Deployment Input
5.	API Key for VMware vRealize Log Insight Cloud

# What resources are deployed ?

It creates the following 3 resources 

1.	Cloud.Service.AWS.Lambda.Function
2.	Cloud.Service.AWS.Lambda.Permission
3.	Cloud.Service.AWS.S3.Bucket.Notification

