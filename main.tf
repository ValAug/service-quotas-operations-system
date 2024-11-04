#--main--

# Create a Service Quota for m7i.4xlarge instance
resource "aws_servicequotas_service_quota" "m7i_4xlarge" {
  service_code = "ec2"
  quota_code   = "L-30E31217"  # This is a placeholder; find the correct quota code for your region
  value = 1  # Set the desired value for the quota
}
