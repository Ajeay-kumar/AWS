########################
#15/9/2025
#Ajeay Kumar
########################

#To create an IAM user with cli:

aws iam create-user --user-name user1

#To create access keys to user:

aws iam create-access-key --user-name user1

#To create IAM policy:

aws iam create-policy --policy-name  S3readonly --policy-document file://Json.txt

#To attach the policy to IAM user:

aws iam attach-user-policy --user-name user1 --policy-arn arn:aws:iam::225989349592:policy/s3readonly 

#To create a IAM group:

aws iam create-group --group-name Developers

#To attach IAM group policy:

aws iam attach-group-policy --group-name Developers --policy-arn arn:aws:iam::225989349592:policy/s3readonly

#To add user to a IAM group:

aws iam add-user-to-group --user-name user1 --group-name Developers

#This is how we can use Programmatic way to create IAM(Users,Groups,and Policies)

