#### Get credentials:
```bash
kubectl exec -it <pod-name> -n jenkins -- cat /var/jenkins_home/credentials.xml
```

#### Put secret to function:
```bash
println(hudson.util.Secret.decrypt("{secret}"))
```
