###plugin error
```bash
rm -rf .terraform
rm -rf ~/.terraform.d/plugin-cache
rm -rf .terraform.lock.hcl
TF_LOG=DEBUG terraform init
```
