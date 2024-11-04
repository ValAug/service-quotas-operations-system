#--main/outputs--

output "sns_topic_arn" {
  value = aws_sns_topic.service_quota_alerts.arn
}