import { App } from "cdktf";
import { AwsTestEnv } from "./stacks/Testing";

export const DEFAULTS = {
  AWS_REGION: "us-east-2"
}

const app = new App();
new AwsTestEnv(app, "AwsTestEnv", DEFAULTS);
app.synth();
