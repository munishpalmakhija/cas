Purpose 

This Blueprint uses Cloud Agnostic components to deploy Ansible Control Machine to multi-cloud. It uses Capability Tag which allows CAS to select the correct Cloud based on the Input 

Pre-requisities 

You need to have following configuration in your CAS environment

1.	Amazon Web Service (AWS) cloud account for account regions where you will deploy Cloud Assembly blueprints.  
2.	vCenter cloud account for the account regions that you want to deploy Cloud Assembly blueprints. 
3.	VMware Cloud on AWS cloud account for the account regions that you want to deploy Cloud Assembly blueprints. 
4.	Capability Tags for the Cloud Zones as follows 
•	AWS Cloud Zone – AWS
•	vCenter Cloud Zone – OnPrem-vSphere 
•	VMware Cloud on AWS- VMWonAWS 
5.	Flavor Mapping for all 3 Cloud Accounts  
•	AWS – t2. Micro
•	OnPrem-vSphere – 2 CPU and 4 GB RAM
•	VMWonAWS – 2 CPU and 4GB RAM 
(I have used acm_small with following config however you can rename it to something else as well with your desired configuration. Make sure you modify the same in Blueprint)
6.	Image Mapping for all 3 Cloud Accounts
•	AWS – Ubuntu AMI for your region. I have it for us-east-1
•	OnPrem-vSphere - Ubuntu Cloud OVA
•	VMWonAWS - Ubuntu Cloud OVA
7.	Storage Profile for all 3 Cloud Accounts
8.	Network Profile for all 3 Cloud Accounts 
