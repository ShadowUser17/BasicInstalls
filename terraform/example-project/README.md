#### Warning! Don't use local storage for *.tfstate files!
#### Example:
```javascript
import { Construct } from "constructs";
import { TerraformStack, S3Backend } from "cdktf";
import { provider } from "@cdktf/provider-aws";

import path = require("path");

export class AwsTestEnv extends TerraformStack {
    constructor(scope: Construct, name: string, defaults: { [key: string]: string }) {
        super(scope, name);

        new provider.AwsProvider(this, "AWS", {region: defaults.AWS_REGION});

        const curDir = path.basename(path.resolve());
        new S3Backend(
            this,
            {
                bucket: defaults.CDKTF_BUCKET_NAME,
                key: `${curDir}/${name}/terraform.tfstate`,
                encrypt: false,
                region: defaults.AWS_REGION,
                dynamodbTable: defaults.DYNAMO_STATE_LOCK
            }
        );
    }
}
```
