#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table
#Create DB for lock state 
locals {
  default_tags = merge(
    var.default_tags,
    { "Env" = var.env }
  )
  name_prefix = "${var.prefix}-${var.env}"
}
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.dynamodb_table_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = "TERRAFORMLOCKING"

  attribute {
    name = "LockID"
    type = "S"

  }
  tags = merge(
    local.default_tags, {
      Name = "${local.name_prefix}-vpc"
    }
  )
}







