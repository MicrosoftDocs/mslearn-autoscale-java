# Autoscale exercise

In this exercise, you'll clone a GIT repository and run a script that sets-up an Azure Spring Apps application and Azure Database for MySQL.
The script deploys a well-known PetClinic microservice application and is built around small independent services, communicating over HTTP via a REST API.

## The sample microservice application

The script deploys a well-known PetClinic microservice application and is built around small independent services, communicating over HTTP via a REST API.
The sample is decomposed into four core microservices. All of them are independently deployable, organized by business domains.

- Customers service: Contains general user input logic and validation including pets and owners information (Name, Address, City, Telephone).
- Visits service: Stores and shows visits information for each pet.
- Vets service: Stores and shows Veterinarians' information, including names and specialties.
- API Gateway: A single entry point into the system, used to handle requests and route them to an appropriate service, and aggregate the results.

## Set up the sample microservice application

In a web browser, open https://shell.azure.com in a new browser window.
Select "Bash" mode in the top right-hand side.
Next, in the bash window, run the following commands to clone the sample repository and open the built-in Azure editor:

   ```bash
   git clone https://github.com/microsoftdocs/mslearn-autoscale-java
   cd mslearn-autoscale-java
   code deployPetClinicApp.sh
   ```

## Set up and run the Setup script

When you run the above command, a window will pop up with the file `deployPetClinicApp.sh` ready to be edited in the built-in Azure editor.

1. At the top of the `deployPetClinicApp.sh` file, edit the following variables to customize the scripts parameters for your environment. For all resource names use lowercase letters - you may use hyphens and numbers also:

   | Variable | Description |
   |-|-|
   | resource_group | Provide a new or existing resource group name |
   | region | The Azure region you'll use. You can use `westeurope` or `centralus`, but we recommend that you use a region close to where you live and that also support Azure Spring Apps. To see the full list of available regions, visit the **Azure Spring Apps Availability by Region** in the Summary unit at the end of this module |
   | spring_apps_service | Name of your Azure Spring Apps instance |
   | mysql_server_name | The name of your MySQL server. It should be unique across Azure |
   | mysql_server_admin_name | Username for the MySQL Administrator. The admin name can't be "azure-superuser", "admin", "administrator", "root", "guest, or "public" |
   | mysql_server_admin_password | A new password for the server admin user. The password must be 8 to 128 characters long and contain a combination of uppercase or lowercase letters, numbers, and non-alphanumeric characters (!, $, #, %, and so on).|
   | log_analytics | Name of your Azure Log Analytics workspace |

2. Save the file by selecting the ... action panel in the top right of the editor and select "Save".

3. Close the editor - open the ... action panel in the top right of the editor and select "Close Editor".

4. Don't close the Azure Cloud Shell, as next, we'll run the setup script.

## Run the setup script

The script takes 30-45 minutes to run and includes the creation of an Azure Spring Apps and a MySQL instance. This sample script also sets-up autoscale configuration for your microservices.

In the already open Azure Cloud Shell, run the below shell script. Leave the browser window and Azure Cloud Shell open while running. Store the URL when the script completes:

```bash
bash deployPetClinicApp.sh
```

In a web browser, navigate to the URL of your returned by the script to open the Pet Clinic microservice application.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Legal Notices

Microsoft and any contributors grant you a license to the Microsoft documentation and other content
in this repository under the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/legalcode),
see the [LICENSE](LICENSE) file, and grant you a license to any code in the repository under the [MIT License](https://opensource.org/licenses/MIT), see the
[LICENSE-CODE](LICENSE-CODE) file.

Microsoft, Windows, Microsoft Azure and/or other Microsoft products and services referenced in the documentation
may be either trademarks or registered trademarks of Microsoft in the United States and/or other countries.
The licenses for this project do not grant you rights to use any Microsoft names, logos, or trademarks.
Microsoft's general trademark guidelines can be found at http://go.microsoft.com/fwlink/?LinkID=254653.

Privacy information can be found at https://privacy.microsoft.com/en-us/

Microsoft and any contributors reserve all other rights, whether under their respective copyrights, patents,
or trademarks, whether by implication, estoppel or otherwise.
