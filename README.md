# Demo Kotlin/Spring GraalVM container deployed on Azure Container App

### Dependencies

* [SdkMan](https://sdkman.io) 
* Java 21 GraalVM edition installed by SdkMan
* Docker
* Docker Hub repository
* Terraform
* Free Azure cloud account

### How to build & run docker locally

[!IMPORTANT]
There can be issues to build on some OS like MacOS AARM etc.

1. Compile code to native: ``` $ ./gradlew nativeCompile ```
2. You can run it locally without docker: ```./build/native/nativeCompile/graalvm-on-aca```
3. Build docker image: ```docker build -t graalvm-on-aca:latest .```
4. Run docker image: ```docker run --rm -p 8080:8080 graalvm-on-aca:latest```

### How to build infrastructure

1. Get Azure cloud account if you do not have. [Free account](https://azure.microsoft.com/en-us/free) is enough.
2. Install Terraform for Azure cloud by fallowing this official [tutorial](https://developer.hashicorp.com/terraform/tutorials/azure-get-started).
3. Go to IAC `cd ./iac`
4. Build it: `terraform apply`

### How to deploy to infrastructure

TODO

### Removing infrastructure

Log into az and run `terraform destroy`