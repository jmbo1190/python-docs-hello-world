install:
	echo "Enter following command: python3 -m venv .venv"  &&\
	echo "Enter following command: source .venv/bin/activate" &&\
	echo "Enter following command: pip install -r requirements.txt" 

run:
	flask run  # runs app.py by default, or module named in $FLASK_APP

deploy:
	az login --use-device-code  # assumes no supported web browser is available locally
	az webapp up --sku F1 --name UbAzAp01 --location "France Central"
