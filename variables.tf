# Variables for the cost anomaly detector module

variable "sns_topic_name" {
  description = "Name of the SNS topic for cost anomaly alerts"
  type        = string
  default     = "ll-cost-anomaly-alerts"
}

variable "notification_emails" {
  description = "List of email addresses to receive cost anomaly alerts"
  type        = list(string)
  # this is temporary, this should go to a better address
  default     = ["brendan+cost-anomaly-detector@lincolnloop.com"]
}

variable "environment" {
  description = "The account environment (e.g., Prod, Dev)"
  type        = string
}

variable "region" {
  description = "AWS region to deploy the resources in"
  type        = string
  default     = "us-east-1"
}

variable "raise_amount_absolute" {
  description = "Absolute increase in USD to trigger the anomaly detector"
  type        = string
  default     = "1000"
}

variable "raise_amount_percent" {
  description = "Percentage increase in costs to trigger the anomaly detector"
  type        = string
  default     = "5"
}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default     = {}
}