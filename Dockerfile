ARG python_version=3-slim
ARG uv_version=0.5.13
FROM python:$python_version

RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install --no-install-recommends -y curl ca-certificates git libopencv-dev python3-opencv tesseract-ocr\
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install uv
ADD https://astral.sh/uv/$uv_version/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Set up the environment
ENV PATH="/root/.local/bin/:$PATH"
ENV PATH="/app/.venv/bin:$PATH"
