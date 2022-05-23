# VM Instance Type 정보 조회


# VM Image Type 조회
data google_compute_image "centos" {
    family = "centos-7"
    project = "centos-cloud"
   #filter = "labels.owner:*"
}

#resource "null_resource" "image_type" {
#    triggers = {
#      "execute_time" = timestamp()
#    }
#  
#  provisioner "local-exec" {
#      command = "glcoud compute images list > ./image_info_all.txt"
#    
#  }
#}

# Region 조회
data "google_compute_regions" "available" {
}

