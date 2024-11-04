#--cloudw/main--

# Create a CloudWatch Metric Alarm for estimated charges
resource "aws_cloudwatch_metric_alarm" "service_quota_alarm" {
  alarm_name          = "ServiceQuotaAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = "21600"  # 6 hours
  statistic           = "Average"
  threshold           = 12.00  # Set threshold to $12
  alarm_description   = "Alarm when estimated charges exceed $12 for m7i.4xlarge"

  # Send notification to SNS topic when alarm state is ALARM
  alarm_actions = [aws_sns_topic.service_quota_alerts.arn]

  dimensions = {
    Currency = "USD"
  }
}