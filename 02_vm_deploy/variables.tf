variable "gcp_credentials" {
  description = "GCP credentials needed by google provider"
}

variable "gcp_project" {
  description = "GCP project name"
}

variable "gcp_region" {
  description = "GCP region, e.g. us-east1"
  default     = "asia-northeast3"
    validation {
    condition     = contains(["asia-northeast3", "Asia-NorthEast3"], var.gcp_region)
    error_message = "Error : \n 지원되지 않는 배포 지역입니다. \n 다음 배포 지역(Region)만 사용 가능합니다. \n \t - 한국 : asia-northeast3  \n ."
 
  }
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-a"
  default     = "asia-northeast3-a"
}

variable "machine_type" {
  description = "GCP machine type"
  validation {
    condition     = contains(["n1-standard-1", "n1-standard-2"], var.machine_type)
    error_message = "Error : \n 지원되지 않는 가상 머신 타입입니다."
 
  }
}

variable "instance_name" {
  description = "GCP instance name"
  default     = "apidemo"
}

variable "image" {
  description = "image to build instance from"
  type = map
}
