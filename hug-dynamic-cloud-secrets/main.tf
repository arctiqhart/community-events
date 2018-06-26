# resource "aws_key_pair" "tf-key" {
#   key_name   = "tf-key"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGTkJRg8aWHUyIVYVIbMGR+j90eGkO6nYzAWit1vYANPY3PJMynRg47/IzFoh64oIW0/qSb0ZQh3VPkROY6ldojC3XH6dkj1Fwsvi/HFa8aTI7cFtGvqlYQ5O2mu9pXq2an6Pp0OopexlMKucOUO6wlvMf/X94r01CkQNDs3TFcfv3IOl2NcZC/1Y1D71KB/N2E8YO0y+KGzMoaH1eUepfTixbKrKtpF1yMjL2jPZgIbcUXkaDy7j3w/dLpKWr+gxSDIotbqSZ9KliYQod/UdoBKiYiRObnBBIe9V5PYpbcteVicVKJ0h9POafXCsPMpMVON7/+O8XaFhyi3u/yWYZ tim@tim-linux"
# }

resource "google_compute_instance" "web" {
  name         = "${lookup(var.IMAGE)}"
  zone         = "${lookup(var.GCP_REGION)}"
  machine_type = "n1-standard-1"

  tags {
    Name    = "web"
    sshUser = "centos"
    Group   = "webservers"
    Project = "gcp_demo"
  }
}

  boot_disk {
    initialize_params {
      image = "centos-7"
      size  = "${var.root_volume_size}"
      type  = "pd-ssd"
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = "${google_compute_address.ext_ip.address}"
    }
  }
}

resource "google_compute_address" "ext_ip" {
  name = "extip"
}

  # user_data                   = "${file("userdata.sh")}"
  key_name   = "pub-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQ6+oHaZ1U5bRVAOC056nC4mWvXR4Dy/QfIvk9SqCmcphXe0ZjsEzNNp02UTdr9MgfJrBk0oH7mtGpz+aecEsQuuPBfMtjNTSBOFal+XwKwihTGLc/sj5/dINkFLYX+rAkX7ogyfJgJynMXMU64ikGMjchbAS4ficp/HAU/om/zRyxPvH8K/cfIIhho0kQuf2E5cVbAFGto2CmMgos/WlnWRr88/UFApGnHlc8WKcaRMYxAtE/ygAKDGvstGKLBH35CYyldm5vzGKkA7L5Prq9mFB8SHhVL9RXb+swJRI+tD2RZ3XyfQusTGV8tGM7y8So7rdVFrbnX5rdv9drY6K1I225M4pMWhG+U96f/0MkiaAUqgMFyHw+9PSYxw1vbL6MHmSCnZn+fwQtWZOoGbQwaXyOthJ39NLSl//3r5Y+vFPSi9Lr5uBag58Cw/1w052Tq4U0wpqAtuJbIimhJTHLMrvw74n12Enw8JLJn9yWrCveCtaBlDR311+QsENLfC1Zj79iVkQwLPDq7Dgi5w+8wyXdXqt3XR2I+EnO9mmLfAgR6aulU62uoU8U39oenLSdXXsNsezyUP6BCXIY1pEyJ1bO70L9FHs+xko2woyRR5gR4RZom+KWePih39o8fQpJ8S1kY+MC22SerVhm5Fx37H+muRbgwRIlyaDpyPnwQw== hart.ripley@arctiq.ca"

  # subnet_id                   = "subnet-"
  # associate_public_ip_address = true