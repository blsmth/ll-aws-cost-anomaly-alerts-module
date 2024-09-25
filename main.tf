# this is mainly just a wrapper around the aws-cost-anomaly-detector module
# available on github.  we are just providing some basic defaults 

# Use the AWS Cost Anomaly Detection Terraform module from GitHub
module "aws_cost_anomaly_detector" {
  source                = "github.com/omers/aws-cost-anomaly-detector"
  emails                = var.notification_emails
  environment           = var.environment
  region                = var.region
  raise_amount_absolute = var.raise_amount_absolute
  raise_amount_percent  = var.raise_amount_percent
  resource_tags         = var.resource_tags
}
