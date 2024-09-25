# ll-aws-cost-anomaly-alerts-module

This is a basic Terraform module which is wrapping [`aws-cost-anomaly-detector`](https://github.com/omers/aws-cost-anomaly-detector/blob/main/README.md) and providing sane defaults for all Lincoln Loop clients. 


# Usage

The most basic usage to monitor costs in the "prod" environment, simply: 

```
module "ll_aws_cost_anomaly_detector" {
  source                = "github.com/lincolnloop/ll-aws-cost-anomaly-detector"
  environment           = "prod"  
}
```

