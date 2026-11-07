# Outputs del módulo de compute
# Superficie de práctica: completar con los outputs necesarios

output "instance_ids" {
  description = "IDs de las instancias EC2 creadas"
  value       = aws_instance.compute.*.id
}

output "instance_public_ips" {
  description = "IPs públicas de las instancias EC2"
  value       = aws_instance.compute.*.public_ip
}

output "security_group_id" {
  description = "ID del security group asociado a las instancias"
  value       = aws_security_group.compute_sg.id
}

output "iam_instance_profile" {
  description = "Nombre del perfil de IAM asociado a las instancias"
  value       = aws_iam_instance_profile.compute_profile.name
}