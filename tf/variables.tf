###cloud vars


variable "cloud_id" {
  type        = string
  description = "My cloud Id"
  default = "b1g8d1us93gouobagkui"
}

variable "folder_id" {
  type        = string
  description = "My folder Id"
  default = "b1gjfbcv5j7vudl3n81h"
}

variable "bucket_name" {
  type        = string
  description = "My bucket name"
  default     = "uxtuahgp-20260613"
}

variable "object_key" {
  type        = string
  description = "My picture object key"
  default     = "tux-pic-20260613.jpg"
}

variable "local_pic_filename" {
  type        = string
  description = "My picture local filename for upload"
  default     = "./tux.jpg"
}
