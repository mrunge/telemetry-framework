FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHRlbGVtZXRyeS1mcmFtZXdvcmstYXBiCmRlc2NyaXB0aW9uOiBU\
ZWxlbWV0cnkgRnJhbWV3b3JrCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRh\
dGE6CiAgZGlzcGxheU5hbWU6IFRlbGVtZXRyeSBGcmFtZXdvcmsgKEFQQikKICBpbWFnZVVybDog\
aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JlZGhhdC1uZnZwZS90ZWxlbWV0cnkt\
ZnJhbWV3b3JrL21hc3Rlci9hcGIvaWNvbi9JY29uX1JIX0RpYWdyYW1fR3JhcGgtTGluZS1BbmFs\
eXNpc19SR0JfRmxhdC5wbmcKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiUmVkIEhhdCwgSW5jLiIK\
cGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogVGhpcyBkZWZhdWx0IHBs\
YW4gZGVwbG95cyB0ZWxlbWV0cnktZnJhbWV3b3JrLWFwYgogICAgZnJlZTogVHJ1ZQogICAgbWV0\
YWRhdGE6CiAgICAgICAgZGlzcGxheU5hbWU6IERlZmF1bHQKICAgIHBhcmFtZXRlcnM6CiAgICAg\
ICAgLSBuYW1lOiBvY19sb2dpbl91c2VybmFtZQogICAgICAgICAgdHlwZTogc3RyaW5nCiAgICAg\
ICAgICB0aXRsZTogT3BlblNoaWZ0IGFkbWluaXN0cmF0aW9uIGxvZ2luIHVzZXJuYW1lCiAgICAg\
ICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIC0gbmFtZTogb2NfbG9naW5fcGFzc3dvcmQKICAg\
ICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAg\
ICAgICAgcmVxdWlyZWQ6IHRydWUK"

COPY apb/playbooks/* /opt/apb/project/
COPY . /opt/apb/project/
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
