
# Existing Jenkins server public IP
output "jenkins_public_ip" {
  description = "Public IP address of the existing Jenkins server"
  value       = "13.203.68.200"
}

# Application server public IP
output "application_public_ip" {
  description = "Public IP address of the application server"
  value       = aws_instance.app.public_ip
}

# Existing Jenkins URL
output "jenkins_url" {
  description = "URL for the existing Jenkins dashboard"
  value       = "http://13.203.68.200:8080"
}

# Application URL
output "application_url" {
  description = "URL for the deployed application"
  value       = "http://${aws_instance.app.public_ip}"
}

