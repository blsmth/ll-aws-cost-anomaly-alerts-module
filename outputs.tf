# Outputs for the cost anomaly detector module

output "sns_topic_arn" {
  description = "The ARN of the SNS topic for cost anomaly alerts"
  value       = aws_sns_topic.cost_anomaly_alerts.arn
}