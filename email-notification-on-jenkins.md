## Steps to add email notification

- Go to your Jenkins Master EC2 instance and allow 465 port number for SMTPS
- Now, we need to generate an application password from our gmail account to authenticate with jenkins
- Open gmail and go to Manage your Google Account --> Security
(Make sure 2 step verification must be on)
- Search for App password and create a app password for jenkins
  
##Once, app password is created
- Go back to jenkins Manage Jenkins --> Credentials to add username and password for email notification
- Go back to Manage Jenkins --> System and search for Extended E-mail Notification
- Scroll down and search for E-mail Notification and setup email notification
- Enter your gmail password which we copied recently in password field E-mail Notification --> Advance
   - smtp sevrver for google = smtp.gmail.com
   - use port 465(generally 25)
   - ssl enable
   - fill desired things

