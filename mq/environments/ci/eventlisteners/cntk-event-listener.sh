#!/usr/bin/env bash

# Set variables

GIT_BRANCH_QM1=${GIT_BRANCH_QM1:-master}
GIT_BRANCH_SPRING=${GIT_BRANCH_SPRING:-master}

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat cntk-event-listener.yaml_template ; echo EOF ) | \
GIT_ORG=${GIT_ORG} \
GIT_BRANCH_QM1=${GIT_BRANCH_QM1:-master} \
GIT_BRANCH_SPRING=${GIT_BRANCH_SPRING:-master} \
sh > cntk-event-listener.yaml
