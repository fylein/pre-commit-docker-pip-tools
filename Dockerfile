FROM python:3.11.3-slim

# add dependencies
RUN apt-get update && apt-get install -y gcc

# upgrade pip to prevent errors
RUN pip install pip --upgrade

# install pip tools
RUN pip install pip-tools
