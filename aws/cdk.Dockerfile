FROM node:14-alpine

VOLUME [ "/root/aws" ]


ENV AWS_CDK_VERSION=2.0.0

RUN  npm install -g aws-cdk@${AWS_CDK_VERSION}



