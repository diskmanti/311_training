#! /bin/bash

oc create secret docker-registry --namespace six imagepullsecret \
    --docker-server=registry.redhat.io  \
    --docker-username=$REDHATACCOUNTUSER \
    --docker-password=$REDHABTACCOUNTPASS \
    --docker-email=$REDHATACCOUNTEMAIL

# This command links the pull secret to the default ServiceAccount in the namespace.
# In a real world scenario the secrets must be linked to a custom ServiceAccount
oc secrets link default imagepullsecret --for=pull