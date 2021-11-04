---
page_type: sample
description: "A minimal sample app that can be used to demonstrate deploying Flask apps to Azure App Service on Linux."
languages:
- python
products:
- azure
- azure-app-service
---

# Python Flask sample for Azure App Service (Linux)

This is a minimal Flask app that can be deployed to Azure App Service on Linux.

For instructions on running and deploying the code, see [Quickstart: Create a Python app in Azure App Service on Linux](https://docs.microsoft.com/azure/app-service/quickstart-python).

## Contributing

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.


## Example deployment with az CLI

$ `make deploy`

`az webapp up --sku F1 --name UbAzAp01 --location "France Central"`

```
Webapp 'UbAzAp01' already exists. The command will deploy contents to the existing app.
Creating AppServicePlan 'ASP-Subscr1WestEUResrcGrp01-95de' ...
Updating runtime version from PYTHON|3.8 to PYTHON|3.7
Waiting for runtime version to propagate ...
Creating zip with contents of dir /home/code/projects/python-docs-hello-world ...
Getting scm site credentials for zip deployment
Starting zip deployment. This operation can take a while to complete ...
Deployment endpoint responded with status code 202
You can launch the app at http://ubazap01.azurewebsites.net

{
  "URL": "http://ubazap01.azurewebsites.net",
  "appserviceplan": "ASP-Subscr1WestEUResrcGrp01-95de",
  "location": "francecentral",
  "name": "UbAzAp01",
  "os": "Linux",
  "resourcegroup": "Subscr1WestEU-ResrcGrp01",
  "runtime_version": "python|3.7",
  "runtime_version_detected": "-",
  "sku": "FREE",
  "src_path": "//home//code//projects//python-docs-hello-world"
}
```
