resource "aws_s3_bucket" "model_data_bucket" {
    bucket  = "${var.account_id}-${var.stage}-${var.project_name}-${var.region}-model-data-bucket"   
}