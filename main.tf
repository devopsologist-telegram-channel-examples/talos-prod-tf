resource "proxmox_virtual_environment_vm" "k8s_master_1_vm" {
  name      = "devopsologist-k8s-master-1"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 4
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 8192
    floating  = 8192
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }
}

resource "proxmox_virtual_environment_vm" "k8s_master_2_vm" {
  name      = "devopsologist-k8s-master-2"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 4
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 8192
    floating  = 8192
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }
}

resource "proxmox_virtual_environment_vm" "k8s_master_3_vm" {
  name      = "devopsologist-k8s-master-3"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 4
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 8192
    floating  = 8192
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }
}

resource "proxmox_virtual_environment_vm" "k8s_worker_1_vm" {
  name      = "devopsologist-k8s-worker-1"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 8
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 16384
    floating  = 16384
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }

  disk {
    datastore_id = "local"
    interface = "scsi1"
    discard   = "on"
    size      = 128
  }
}

resource "proxmox_virtual_environment_vm" "k8s_worker_2_vm" {
  name      = "devopsologist-k8s-worker-2"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 8
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 16384
    floating  = 16384
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }

  disk {
    datastore_id = "local"
    interface = "scsi1"
    discard   = "on"
    size      = 128
  }
}

resource "proxmox_virtual_environment_vm" "k8s_worker_3_vm" {
  name      = "devopsologist-k8s-worker-3"
  node_name = "proxmox-4"

  # should be true if qemu agent is not installed / enabled on the VM
  stop_on_destroy = false

  agent {
    enabled = true
  }

  cpu {
    cores = 8
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 16384
    floating  = 16384
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  disk {
    datastore_id = "local"
    file_id   = "local:iso/talos-1.11.2-qemu-ga-and-drbd.iso"
    interface = "scsi0"
    discard   = "on"
    size      = 64
  }

  disk {
    datastore_id = "local"
    interface = "scsi1"
    discard   = "on"
    size      = 128
  }
}