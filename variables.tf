variable "iam_role_policy_attachments" {
  description = <<EOT
Map of iam_role_policy_attachments, attributes below
Required:
    - policy_arn
    - role
EOT

  type = map(object({
    policy_arn = string
    role       = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

