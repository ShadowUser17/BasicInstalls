#### URLs:
- [terraform-provider-aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [terraform-provider-helm](https://registry.terraform.io/providers/hashicorp/helm/latest/docs)
- [terraform-provider-kubectl](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs)
- [terraform-provider-kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)

#### Remove lock in DynamoDB:
- Get lock id and record name from error.
- Go to `cdktf.out/stacks/<stack_name>` and run `terraform force-unlock <lock_id>`.
- If the previous step doesn't work go to the next steps.
- Go to the `DynamoDB AWS console` and open `Explore items`.
- Select the table and find the record and delete it.
