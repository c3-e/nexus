#!/bin/bash

# You will have to wait till the DNS names are distributed.

curl -u admin:admin123 -X POST -H"Content-Type: application/json" 'https://dev-nexus-0.c3-e.com/service/rest/beta/repositories/docker/proxy' --data-binary @registry.c3.ai.json
curl -u admin:admin123 -X POST -H"Content-Type: application/json" 'https://dev-nexus-1.c3-e.com/service/rest/beta/repositories/docker/proxy' --data-binary @registry.c3.ai.json

curl -u admin:admin123 -X POST -H"Content-Type: application/json" 'https://dev-nexus-0.c3-e.com/service/rest/v1/security/users' --data-binary @user.json
curl -u admin:admin123 -X POST -H"Content-Type: application/json" 'https://dev-nexus-1.c3-e.com/service/rest/v1/security/users' --data-binary @user.json
