# Lab Catalog

| Template | Deploy Button | Reference Deployment Time | Additional Info | 
|-|-|-|-|
|[https://raw.githubusercontent.com/shurick81/exam-preparation-labs/master/az-204/bicep/api-management-plus-back-end.bicep](https://raw.githubusercontent.com/shurick81/exam-preparation-labs/master/az-204/bicep/api-management-plus-back-end.bicep)|[![Deploy To Azure](https://raw.githubusercontent.com/shurick81/exam-preparation-labs/master/doc/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fshurick81%2Fexam-preparation-labs%2Fmaster%2Faz-204%2Fbicep%2Fapi-management-plus-back-end.json)|2 min||

# Lab Debug

## Create Github Codespace

1. Create Github Codespace
2. Run:

```bash
az login --use-device-code;
az group create --location westeurope --name api-management-plus-back-end-00;
az deployment group create -g api-management-plus-back-end-00 --template-file az-204/bicep/api-management-plus-back-end.bicep;
```

## Run in Azure Cloud Shell

1. Open Cloud Shell
2. Clone the exam-preparation-labs repo
3. Open the repo clone directory
4. Run:

```bash
az group create --location westeurope --name api-management-plus-back-end-00;
az deployment group create -g api-management-plus-back-end-00 --template-file az-204/bicep/api-management-plus-back-end.bicep;
```

# Build

```bash
az bicep build --file az-204/bicep/api-management-plus-back-end.bicep
```
