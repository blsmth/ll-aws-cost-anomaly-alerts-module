# Outputs for the cost anomaly detector module

output "sns_topic_arn" {
  description = "The ARN of the SNS topic for cost anomaly alerts"
  value       = module.aws_cost_anomaly_detector.sns_arn
}