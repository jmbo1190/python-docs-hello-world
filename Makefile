install:
	echo "Enter following command: python3 -m venv .venv"  &&\
	echo "Enter following command: source .venv/bin/activate" &&\
	echo "Enter following command: pip install -r requirements.txt" 

run:
	flask run  # locally runs app.py by default, or module named in $FLASK_APP

deploy:
	az login --use-device-code  # assumes no supported web browser is available locally
	az webapp up --sku F1 --name UbAzAp01 --location "France Central"

update:
	az webapp up # uses values cached locally in .azure/config file, including app name, resource group, and App Service plan.

log:
	echo "press Ctrl-C to stop log streaming..."
	echo "you can also browse https://ubazap01.scm.azurewebsites.net/api/logs/docker"
	az webapp log tail

delete:
	az group delete --no-wait  # deletes the app - will have to re-deploy it after that
