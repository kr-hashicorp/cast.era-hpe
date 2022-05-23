output "image_info_cent" {
    value = data.google_compute_image.centos.name[*]
}

output "region_info" {
    value = data.google_compute_regions.available.names[*]
}
