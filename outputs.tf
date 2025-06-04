
output "public_ip" {
  description = "Public IPs of the EC2 instances"
  value       = aws_instance.simple_ec2.*.public_ip
}
