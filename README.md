This is a simple docker setup for running continuous integration with Jenkins for Jira plugin development.

To run an instance:

```bash
# First verify that docker is running

docker-compose build
docker-compose up
```

Then navigate to localhost:8080


In the Dockerfile, you will notice the commands that are required to install the Atlassian SDK. Again, these are:

```bash
sudo apt-get -qq update

sudo echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y atlassian-plugin-sdk
```

Once Atlassian is installed, we can run our unit and integration tests in Jenkins.

```bash
# Go into your atlas plugin directory root
cd burnup

# Run the tests
atlas-unit-test
atlas-integration-test
```

![Jenkins Shell Execution](http://i.imgur.com/qpK4JK1.png)

