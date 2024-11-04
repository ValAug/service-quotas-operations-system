#--sns/main--

# Create an SNS Topic for notifications
resource "aws_sns_topic" "service_quota_alerts" {
  name = "service-quota-alerts"
}

#Create an SNS Subscription to send notifications to your email
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.service_quota_alerts.arn
  protocol  = "email"
  endpoint  = "your_email@example.com"  # Replace with your email
}

# Create an SNS Subscription for SMS
resource "aws_sns_topic_subscription" "sms_subscription" {
  topic_arn = aws_sns_topic.service_quota_alerts.arn
  protocol  = "sms"
  endpoint  = "+16472224567"  # Replace with the phone number you want to subscribe
}