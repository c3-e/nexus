#!/bin/bash

helm upgrade --install nexus-0 ./ -f values-0.yaml -n nexus
helm upgrade --install nexus-1 ./ -f values-1.yaml -n nexus
