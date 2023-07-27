import { Construct } from "constructs";
import { TerraformStack } from "cdktf";
import { provider } from "@cdktf/provider-aws";

export class AwsTestEnv extends TerraformStack {
  constructor(scope: Construct, id: string, defaults: { [key: string]: string }) {
    super(scope, id);

    new provider.AwsProvider(this, "AWS", {
      region: defaults.AWS_REGION
    });

    // define resources here
  }
}
