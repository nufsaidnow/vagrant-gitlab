# Vagrant GitLab

# Certificates
Create a private key and put it in the file ```gitlab.local.key```. Then create a CSR to be signed. You can use https://github.com/nufsaidnow/ca, if you're feeling adventurous.

```shell
$ ./create-csr.sh gitlab.local Company Sweden SE
$ ./create-csr.sh grafana.gitlab.local Company Sweden SE
$ ./create-csr.sh api.gitlab.local Company Sweden SE
```

Put the certificates in 
```
certs/public/gitlab.local.crt
certs/public/grafana.gitlab.local.crt
certs/public/api.gitlab.local.crt
```