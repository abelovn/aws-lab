FROM debian:bullseye
WORKDIR /awslab
RUN apt-get update
RUN apt-get -y install python3-pip
RUN python3 -m pip install boto botocore boto3
RUN pip3 install -U setuptools
RUN pip3 install 'ansible~=2.9.0'
RUN ansible-galaxy collection install community.aws
COPY docker-bashrc /root/.bashrc
COPY . .
CMD bash