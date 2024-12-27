Install trivy

```bash
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update -y
sudo apt-get install trivy -y
```

---

Sonarqube set-up

```bash
docker run -itd --name SonarQube-Server -p 9000:9000 sonarqube:lts-community
```
Access Sonar sever

```bash
<server-ip>:9000
```
- install SonarQube Scanner plugin
- Login to SonarQube server and create the credentials for jenkins to integrate with SonarQube
- Navigate to Administration --> Security --> Users --> Token 
- Now, go to Manage Jenkins --> credentials and add Sonarqube credentials
- Go to Manage Jenkins --> Tools -> SonarQube Scanner installations
- Go to Manage Jenkins --> System -> SonarQube installations
- Login to SonarQube server, go to Administration --> Webhook and click on create (add name and url <http://serverip:8080/sonarqube-webhook/> )

---

Owasp set up on jenkins

- install OWASP plugin
- After OWASP plugin is installed, Now move to Manage jenkins --> Tools 
