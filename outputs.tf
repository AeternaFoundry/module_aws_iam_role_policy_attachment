output "iam_role_policy_attachments_id" {
  description = "Map of id values across all iam_role_policy_attachments, keyed the same as var.iam_role_policy_attachments"
  value       = { for k, v in aws_iam_role_policy_attachment.iam_role_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_role_policy_attachments_policy_arn" {
  description = "Map of policy_arn values across all iam_role_policy_attachments, keyed the same as var.iam_role_policy_attachments"
  value       = { for k, v in aws_iam_role_policy_attachment.iam_role_policy_attachments : k => v.policy_arn if v.policy_arn != null && length(v.policy_arn) > 0 }
}
output "iam_role_policy_attachments_role" {
  description = "Map of role values across all iam_role_policy_attachments, keyed the same as var.iam_role_policy_attachments"
  value       = { for k, v in aws_iam_role_policy_attachment.iam_role_policy_attachments : k => v.role if v.role != null && length(v.role) > 0 }
}

