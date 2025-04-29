FROM python:3.13-slim

# add dependencies
RUN apt-get update && apt-get install -y gcc libpq-dev

# upgrade pip to prevent errors
RUN pip install "pip<24.0" --upgrade

# install pip tools
RUN pip install pip-tools==6.14.0
