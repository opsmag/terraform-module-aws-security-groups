output "this_security_group_id" {
  description = "The ID of the security group"
  value       = "${element(concat(coalescelist(aws_security_group.this.*.id, aws_security_group.this_name_prefix.*.id), list("")), 0)}"
}

output "this_security_group_vpc_id" {
  description = "The VPC ID"
  value       = "${element(concat(coalescelist(aws_security_group.this.*.vpc_id, aws_security_group.this_name_prefix.*.vpc_id), list("")), 0)}"
}

output "this_security_group_owner_id" {
  description = "The owner ID"
  value       = "${element(concat(coalescelist(aws_security_group.this.*.owner_id, aws_security_group.this_name_prefix.*.owner_id), list("")), 0)}"
}

output "this_security_group_name" {
  description = "The name of the security group"
  value       = "${element(concat(coalescelist(aws_security_group.this.*.name, aws_security_group.this_name_prefix.*.name), list("")), 0)}"
}

output "this_security_group_description" {
  description = "The description of the security group"
  value       = "${element(concat(coalescelist(aws_security_group.this.*.description, aws_security_group.this_name_prefix.*.description), list("")), 0)}"
}