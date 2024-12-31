# python-uv-base

Lovingly forked from Owl Corp's [Python-Poetry-Base](https://github.com/owl-corp/python-template)

A base Dockerfile with uv pre-installed. Using this image as a base will allow you to forget about anything required to setup uv within your Docker environment.

Simply `COPY` your pyproject & uv lock file into your image, and `uv run`.

virtual environments are created in `/opt/poetry/home` as to not conflict with in-project `.venv` folders that may be copied into the image if using a docker compose source code volume.

See the [examples](./examples/) folder for example usage.
