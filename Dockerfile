FROM jenkins

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://www.npmjs.org/install.sh | sh

