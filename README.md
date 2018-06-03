# clientonboard-apb
This apb (ansible playbook bundle) takes plan type, project name as inputs and creates a new openshift project and add resource quotas by the plan type. 
This APB also takes admin users list and add them as project admin role. 

Note - we are assuming that user is already in the cluster (through SSO) and adding the role to the project. 

## Steps to generate this apb

### Setup APB locally

```
alias apb='docker run --rm --privileged -v $PWD:/mnt -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.kube:/.kube -e DOCKER_TLS_VERIFY="1" -u $UID docker.io/ansibleplaybookbundle/apb-tools  "$@"'
```

### APB commands
```
# Initialize the APB
apb init
```
After initializing APB, we need to update the provision and deprovision roles with the actual tasks to be done. Here in this case, we are using all `oc` (openshift-cli) commands to perform operations on openshift cluster
Once all the changes are in-place run the below command to prepare the dockerfile
```
# Prepare Dockerfile
apb prepare
```
The above step prepares the Dockerfile by converting the apb.yaml into a base64 string and adding it as a Docker label. 
*Note* - The newer version of Openshift (>=3.9) we need this lable to be mandatorily added. If the below label is not available, then ASB (ansible service broker) is not querying/filtering the repo.
```
LABEL "com.redhat.apb.runtime"="2"
```
Next build the docker image
```
# Build Dockerfile
apb build --tag docker.io/manojbadam/customer-apb
```
Push the docker image
```
docker push manojbadam/customer-apb
```

### Steps to test the APB locally
##### Step 1 - Configure your local oc cli
since we are using the oc commands inside the playbook tasks, we need to properly configure it. 
```
oc login https://127.0.0.1:8443 --token=lcBlU0Du4qMpb-qf4Oqt9AI4MiT7T5n6vlFbLhowNKQ
```
##### Step 2 - Run the APB docker image
```
docker run --rm --net=host -v $HOME/.kube:/opt/apb/.kube:z -u $UID \
docker.io/manojbadam/customer-apb:latest \
provision \
--extra-vars 'namespace=default' \
--extra-vars 'project_name=manoj' \
--extra-vars 'admin_users=manojbadam,debianmaster' \
--extra-vars 'readonly_users=karthik' \
--extra-vars 'project_cpu=4' \
--extra-vars 'project_mem=8' \
--extra-vars 'num_services=4' \
--extra-vars '_apb_plan_id=gold'
```
This should work without any errors and create the project `manoj` and add resource quotas to it. 


### ASB configuration
Ansible service broker needs to be configured to listen to our docker org (docker.io/manojbadam) and populate the service catalog with the APB.
```
registry:
  - type: dockerhub
    name: dh
    url:  https://registry.hub.docker.com
    org:  manojbadam
    tag:  latest
    white_list: [.*-apb$]
    auth_type: ""
    auth_name: ""
```
Typically it takes 20-30mins after the image got pushed. 
