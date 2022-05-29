FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install awscli 

RUN apt-get install -y openssh-server openssh-client
    
RUN mkdir -p -m 755 /var/run/sshd

RUN mkdir -m 755 /root/.ssh

RUN apt-get install -y curl \
    vim 

RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp && \
    mv /tmp/eksctl /usr/local/bin

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENV AWS_ACCESS_KEY_ID=AKIA5H75BDU6UBP7IWUB
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_DEFAULT_REGION=us-east-1

# Install Docker
RUN apt-get update && \
    apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && \
    apt-get -y install docker-ce

# Install docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

CMD /usr/sbin/sshd -D