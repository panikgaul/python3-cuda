FROM nvidia/cuda

# Initialize
RUN mkdir -p /src
WORKDIR /src
COPY ./src /src

# Setup
RUN /src/setup.sh
