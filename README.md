1. `urls.txt` contain the web server url

2. `screenshot01.png`, `screenshot02.png` and `blue-green-update.txt` demonstrate the blue-green deployment

3. `screenshot03.png` and `screenshot04.png` demonstrate the docker linting steps

4. `screenshot05.png` demonstrate the pipeline is running successfully

5. EC2 create by Cloudformation: I create EC2 instance by using the template `cloudformation/build-agent.yml`. Run the command 
```
aws cloudformation create-stack --stack-name=stack-build-agent --template-body file://cloudformation/build-agent.yml --capabilities CAPABILITY_NAMED_IAM`
```

6. `screenshot06.png` demonstrate that my EC2 can perfectly connect with the cluster 

7. `screenshot07.ong` demonstrate that the application run perfectly after the rolling update in <2> step

8. Kubernetes Cluster: I have create a cluster in EKS by using the template in `eks-template/eks-template.yml` successfully. But I think I can try to create a K8s cluster in other platform like GCP `screenshot08.png`. So I create a K8s cluster in GCP instead. Because the requirements `requirement.png` said that the K8s can be initialized by hand so I think it is ok.
