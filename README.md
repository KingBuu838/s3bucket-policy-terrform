click onto the bucket you plan on using click on upload and add files
once the files you need click on the upload button then click on the orange close button
check the box for the files you plan on make public
go to properties and go down to static website hosting, click edit and click Enable
index document = index.html #the image you plan on using needs to be in this html example = <img src="./image.jpg"> 
error document = error.html
save changes
go to permissions
block public access (bucket settings) click on edit
uncheck Block all public access and save changes, type confirm 
go to Object Ownership, Edit
click ACLs enabled, check I acknowledge that ACLs will be restored, Save changes
go to Access control list (ACL), Edit
Everyone (public) - for class purposes
check I understand the effects of these changes on my objects and buckets and save changes
click the file and go to Actions and click Make public using ACL
click Make public, click Close

Bucket Policy 
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicAccess",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::120625/*" #this is the name of the bucket created
        }
    ]
}
