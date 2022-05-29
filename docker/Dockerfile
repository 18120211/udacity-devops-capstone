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

CMD /usr/sbin/sshd -D