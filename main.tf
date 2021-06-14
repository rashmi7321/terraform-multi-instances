# vm1.tf

resource "google_compute_disk" "test-node-1-index-disk-" {
    count   = var.node_count
    name    = "test-node-1-index-disk-${count.index}-data"
    type    = "pd-standard"
    project = var.project
    zone    = var.zone
    size    = var.disk_size
}
resource "google_compute_instance" "test-node-" {
    count = var.node_count
    name =  "test-node-${count.index}"
    machine_type = var.machine_type
    zone = var.zone
    project = var.project

    boot_disk {
    initialize_params {
    image = var.source_image
    }
   }
    attached_disk {
        source      = "${element(google_compute_disk.test-node-1-index-disk-.*.self_link, count.index)}"
        device_name = "${element(google_compute_disk.test-node-1-index-disk-.*.name, count.index)}"
   }

    network_interface {
      network = "default"
      access_config {
        // Ephemeral IP
      }

    }
}