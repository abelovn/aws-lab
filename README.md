# Ansible role to deploy AWS infrastructure for WordPress
### Ansible script of this repo is intended to spin up the infrastructure described below




To run the playbooks, you need Ansible 2.9, Python 3x and the latest botocore, boto and boto3 python packages.

The simple way to run ansible playbook build Dockerfile and run it.
Just run:

```bash
  docker build -t ansible .
  docker run --rm -it ansible
```




You must have an access key and secret key for the user with appropriate rights.
In the docker container Set Environment Variables before launching Ansible script:
```bash
export AWS_ACCESS_KEY_ID=YOURACCESSKEYIDHERE
export AWS_SECRET_ACCESS_KEY=YOURACTUALSECRETACCESSKEYCOMESHERE
export AWS_DEFAULT_REGION=us-east-1
```

Then, to create the infrastructure, run:
```bash
ansible-playbook deploy.yml
```

To destroy the infrastructure, when done:
```bash
ansible-playbook destroy.yml
```
