#### URLs:
- [terraform-provider-aws](https://github.com/hashicorp/terraform-provider-aws)
- [cdktf-provider-aws](https://github.com/cdktf/cdktf-provider-aws)

#### Remove lock in DynamoDB:
- Get lock id and record name from error.
- Go to `cdktf.out/stacks/<stack_name>` and run `terraform force-unlock <lock_id>`.
- If the previous step doesn't work go to the next steps.
- Go to the `DynamoDB AWS console` and open `Explore items`.
- Select the table and find the record and delete it.
