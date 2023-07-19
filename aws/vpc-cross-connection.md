#### URLs:
- [vpc-peering](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html)
- [transit-gateway](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html)

#### Cross-account peering:
- Go to the `account-A` and create VPC `test-a-us-east-2` with CIDR `192.168.56.0/24`
- Go to the `account-B` and create VPC `test-b-us-west-2` with CIDR `192.168.60.0/24`
- Create a peering connection between `account-A` and `account-B`
- Turn back to `account-A` and accept the peering request.
- Add route to `192.168.60.0/24` via peering connection.
- Go to the `account-B` and add the route to `192.168.56.0/24` via peering connection.
