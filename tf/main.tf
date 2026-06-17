
resource "yandex_kms_symmetric_key" "my-key" {
  name                = "my-key"
  description         = "My symmetric key for object storage encryption"
  default_algorithm   = "AES_128"
  rotation_period     = "720h"
}

resource "yandex_storage_bucket" "my-bucket" {
  bucket    = var.bucket_name
  folder_id = var.folder_id
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.my-key.id
        sse_algorithm     = "aws:kms"
      }
    }
  }

}


resource "yandex_storage_object" "upload-pic" {
  bucket = var.bucket_name
  key = var.object_key
  source = var.local_pic_filename
  content_type = "image/jpeg"
  acl    = "public-read"
  depends_on = [yandex_storage_bucket.my-bucket]
}
