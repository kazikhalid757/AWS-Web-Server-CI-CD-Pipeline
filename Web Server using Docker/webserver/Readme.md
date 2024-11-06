## Make a Web Server Using Docker on AWS EC2 Instance.

   1. Launch an EC2 Instance.
   2. Install Docker.
      ```
       sudo apt-get update
       sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
       
       curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
       
       sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
       
       sudo apt-get update
       
       sudo apt-get install docker-ce -y
       
       sudo docker run hello-world
   
      ```
   3. Create a directory for your project.
        ```mkdir webserver && cd webserver```
   4. Create a Dockerfile.
        ```nano Dockerfile```
   5. Create app.py file
        ``` nano app.py```
   6. Create requirements.txt file
        ``` nano requirements.txt ```
   7. Configure Custom port 80 on AWS EC2.
   8. Create two directories: static and templates
        ```mkdir static templates```
   9. Create index.html in templates directorie.
       ```nano templates/index.html```
   10. Create style.css in templates directorie.
         ```nano static/style.css```

### Bulid and Run Dockerfile:

```
sudo docker build -t my-webserver .
sudo docker run -d -p 80:80 my-webserver

```

### You can See Your Website.
  ```http://your pubic IP ```
