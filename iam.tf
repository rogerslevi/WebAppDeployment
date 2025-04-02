# resource "aws_iam_group" "WebAppGroup" {
#   name = "WebApp-group"
# }

# # data "aws_iam_user" "WebAppUser" {
# #   name = "WebApp-user"
# # }

# data "aws_iam_policy_document" "AssumeRole" {
#   statement {
#     effect = "Allow"

#     principals {
#       type        = "Service"
#       identifiers = ["s3.amazonaws.com"]
#     }
#     actions = ["sts:AssumeRole"]
#   }
# }

# # data "aws_iam_policy_document" "WebAppAssumption" {
# #   statement {
# #     effect = "Allow"
# #     actions = [
# #       "s3:FullAccess"
# #     ]
# #     resources = [aws_s3_bucket.WebApp.arn]
# #   }
# # }