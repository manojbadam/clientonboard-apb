FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.runtime"="2"
LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGN1c3RvbWVyb25ib2FyZApkZXNjcmlwdGlvbjogVGhpcyBpcyBh\
IHNhbXBsZSBhcHBsaWNhdGlvbiBnZW5lcmF0ZWQgYnkgYXBiIGluaXQKYmluZGFibGU6IEZhbHNl\
CmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogY3VzdG9tZXItb25ib2Fy\
ZAogIGRlcGVuZGVuY2llczogW10KcGxhbnM6CiAgLSBuYW1lOiBnb2xkCiAgICBkZXNjcmlwdGlv\
bjogVGhpcyBwbGFuIHNldHVwIHRoZSBkZWZhdWx0IHJlc291cmNlIGFsbG9jYXRpb24KICAgIGZy\
ZWU6IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczoKICAgICAgLSBuYW1lOiBw\
cm9qZWN0X25hbWUKICAgICAgICBkZXNjcmlwdGlvbjogUHJvamVjdCBuYW1lCiAgICAgICAgdHlw\
ZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogIm5ld3Byb2plY3QiCiAgICAgICAgcmVxdWlyZWQ6\
IHRydWUKICAgICAgLSBuYW1lOiBhZG1pbl91c2VycwogICAgICAgIGRlc2NyaXB0aW9uOiBBZG1p\
biB1c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29tbWEgc2VwYXJhdGVkIHZhbHVlcwog\
ICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJtYW5vamJhZGFtLGRlYmlhbm1h\
c3RlciIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHVwZGF0YWJsZTogdHJ1ZQogICAg\
ICAtIG5hbWU6IHJlYWRvbmx5X3VzZXJzCiAgICAgICAgZGVzY3JpcHRpb246IFJlYWQgb25seSB1\
c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29tbWEgc2VwYXJhdGVkIHZhbHVlcwogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJrYXJ0aGlrIgogICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiB0cnVlICAgICAgICAKICAgICAgLSBuYW1lOiBw\
cm9qZWN0X2NwdQogICAgICAgIGRlc2NyaXB0aW9uOiBDUFUgbGltaXQgZm9yIHRoZSBQcm9qZWN0\
CiAgICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAgZGVmYXVsdDogNAogICAgICAgIHJlcXVpcmVk\
OiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiBmYWxzZQogICAgICAtIG5hbWU6IHByb2plY3RfbWVt\
CiAgICAgICAgZGVzY3JpcHRpb246IE1lbW9yeSBsaW1pdCBmb3IgdGhlIFByb2plY3QKICAgICAg\
ICB0eXBlOiBudW1iZXIKICAgICAgICBkZWZhdWx0OiA4CiAgICAgICAgcmVxdWlyZWQ6IHRydWUK\
ICAgICAgICB1cGRhdGFibGU6IGZhbHNlCiAgICAgIC0gbmFtZTogbnVtX3NlcnZpY2VzCiAgICAg\
ICAgZGVzY3JpcHRpb246IE51bWJlciBvZiBzZXJ2aWNlcyBhbGxvd2VkCiAgICAgICAgdHlwZTog\
bnVtYmVyCiAgICAgICAgZGVmYXVsdDogNAogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAg\
dXBkYXRhYmxlOiBmYWxzZSAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgLSBuYW1lOiBwbGF0\
aW51bQogICAgZGVzY3JpcHRpb246IFRoaXMgcGxhbiBzZXR1cCB0aGUgcGxhdGludW0gcmVzb3Vy\
Y2UgYWxsb2NhdGlvbgogICAgZnJlZTogRmFsc2UKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1l\
dGVyczoKICAgICAgLSBuYW1lOiBwcm9qZWN0X25hbWUKICAgICAgICBkZXNjcmlwdGlvbjogUHJv\
amVjdCBuYW1lCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogIm5ld3Byb2pl\
Y3QiCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSBuYW1lOiBhZG1pbl91c2VycwogICAg\
ICAgIGRlc2NyaXB0aW9uOiBBZG1pbiB1c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29t\
bWEgc2VwYXJhdGVkIHZhbHVlcwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6\
ICJtYW5vamJhZGFtLGRlYmlhbm1hc3RlciIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IHVwZGF0YWJsZTogdHJ1ZQogICAgICAtIG5hbWU6IHJlYWRvbmx5X3VzZXJzCiAgICAgICAgZGVz\
Y3JpcHRpb246IFJlYWQgb25seSB1c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29tbWEg\
c2VwYXJhdGVkIHZhbHVlcwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJr\
YXJ0aGlrIgogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiB0cnVlICAg\
ICAgICAKICAgICAgLSBuYW1lOiBwcm9qZWN0X2NwdQogICAgICAgIGRlc2NyaXB0aW9uOiBDUFUg\
bGltaXQgZm9yIHRoZSBQcm9qZWN0CiAgICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAgZGVmYXVs\
dDogOAogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiBmYWxzZQogICAg\
ICAtIG5hbWU6IHByb2plY3RfbWVtCiAgICAgICAgZGVzY3JpcHRpb246IE1lbW9yeSBsaW1pdCBm\
b3IgdGhlIFByb2plY3QKICAgICAgICB0eXBlOiBudW1iZXIKICAgICAgICBkZWZhdWx0OiAxNgog\
ICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiBmYWxzZQogICAgICAtIG5h\
bWU6IG51bV9zZXJ2aWNlcwogICAgICAgIGRlc2NyaXB0aW9uOiBOdW1iZXIgb2Ygc2VydmljZXMg\
YWxsb3dlZAogICAgICAgIHR5cGU6IG51bWJlcgogICAgICAgIGRlZmF1bHQ6IDgKICAgICAgICBy\
ZXF1aXJlZDogdHJ1ZQogICAgICAgIHVwZGF0YWJsZTogZmFsc2UgICAKICAtIG5hbWU6IGRpYW1v\
bmQKICAgIGRlc2NyaXB0aW9uOiBUaGlzIHBsYW4gc2V0dXAgdGhlIGRpYW1vbmQgcmVzb3VyY2Ug\
YWxsb2NhdGlvbgogICAgZnJlZTogRmFsc2UKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVy\
czoKICAgICAgLSBuYW1lOiBwcm9qZWN0X25hbWUKICAgICAgICBkZXNjcmlwdGlvbjogUHJvamVj\
dCBuYW1lCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogIm5ld3Byb2plY3Qi\
CiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSBuYW1lOiBhZG1pbl91c2VycwogICAgICAg\
IGRlc2NyaXB0aW9uOiBBZG1pbiB1c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29tbWEg\
c2VwYXJhdGVkIHZhbHVlcwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJt\
YW5vamJhZGFtLGRlYmlhbm1hc3RlciIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHVw\
ZGF0YWJsZTogdHJ1ZQogICAgICAtIG5hbWU6IHJlYWRvbmx5X3VzZXJzCiAgICAgICAgZGVzY3Jp\
cHRpb246IFJlYWQgb25seSB1c2VycyB0byBiZSBhZGRlZCBmb3IgcHJvamVjdCwgY29tbWEgc2Vw\
YXJhdGVkIHZhbHVlcwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJrYXJ0\
aGlrIgogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiB0cnVlICAgICAg\
ICAKICAgICAgLSBuYW1lOiBwcm9qZWN0X2NwdQogICAgICAgIGRlc2NyaXB0aW9uOiBDUFUgbGlt\
aXQgZm9yIHRoZSBQcm9qZWN0CiAgICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAgZGVmYXVsdDog\
MTYKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHVwZGF0YWJsZTogZmFsc2UKICAgICAg\
LSBuYW1lOiBwcm9qZWN0X21lbQogICAgICAgIGRlc2NyaXB0aW9uOiBNZW1vcnkgbGltaXQgZm9y\
IHRoZSBQcm9qZWN0CiAgICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAgZGVmYXVsdDogMzIKICAg\
ICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHVwZGF0YWJsZTogZmFsc2UKICAgICAgLSBuYW1l\
OiBudW1fc2VydmljZXMKICAgICAgICBkZXNjcmlwdGlvbjogTnVtYmVyIG9mIHNlcnZpY2VzIGFs\
bG93ZWQKICAgICAgICB0eXBlOiBudW1iZXIKICAgICAgICBkZWZhdWx0OiAxNgogICAgICAgIHJl\
cXVpcmVkOiB0cnVlCiAgICAgICAgdXBkYXRhYmxlOiBmYWxzZSAgICAgICAgICAg"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
