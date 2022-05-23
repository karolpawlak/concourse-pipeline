# CI/CD pipeline with Concourse
Basic Concourse pipeline for deploying applications to various environments.

---

## Installation

Prerequisites:
* [Docker](https://docs.docker.com/reference/)
* [Fly CLI](https://concourse-ci.org/fly.html)

Docker installation should include Docker Compose which can be used to deploy Concourse. In the same directory where `docker-compose.yml` is, run the following to start the Concourse:
```
docker-compose up -d
```
To destroy the Concourse deployment:
```
docker-compose down
```

The web UI will be available at http://127.0.0.1:8080 . Instruct the Fly CLI to target the Concourse deployment by running the following commands:
```
fly --target=my-pipeline login --concourse-url=http://127.0.0.1:8080 --username=admin --password=admin
fly --target=my-pipeline sync
```

Test this by checking the `~/.flyrc` file and see saved target Concourse API.

## Thanks
Thanks to Alex Suraci for inventing Concourse CI, and to Pivotal and VMware for sponsoring him and a team of developers to work since 2014.

This pipeline was created as part of learning Concourse using the Stark & Wayne tutorial at https://concoursetutorial.com