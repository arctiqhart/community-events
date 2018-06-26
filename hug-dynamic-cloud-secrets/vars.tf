variable "GCP_REGION" {
  default = "us-east1"
}

variable "GCP_ZONE" {
  default = "us-east1-b"
}

variable "IMAGE" {
  default = "centos-7"
}

variable "root_volume_size" {
  description = "Disk Size - GB"
  default     = 10
}

variable "project" {
  description = "GCP Project Name"
  default     = "hashi-vault"
}

variable "key_name" {
  default = "pub-key"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQ6+oHaZ1U5bRVAOC056nC4mWvXR4Dy/QfIvk9SqCmcphXe0ZjsEzNNp02UTdr9MgfJrBk0oH7mtGpz+aecEsQuuPBfMtjNTSBOFal+XwKwihTGLc/sj5/dINkFLYX+rAkX7ogyfJgJynMXMU64ikGMjchbAS4ficp/HAU/om/zRyxPvH8K/cfIIhho0kQuf2E5cVbAFGto2CmMgos/WlnWRr88/UFApGnHlc8WKcaRMYxAtE/ygAKDGvstGKLBH35CYyldm5vzGKkA7L5Prq9mFB8SHhVL9RXb+swJRI+tD2RZ3XyfQusTGV8tGM7y8So7rdVFrbnX5rdv9drY6K1I225M4pMWhG+U96f/0MkiaAUqgMFyHw+9PSYxw1vbL6MHmSCnZn+fwQtWZOoGbQwaXyOthJ39NLSl//3r5Y+vFPSi9Lr5uBag58Cw/1w052Tq4U0wpqAtuJbIimhJTHLMrvw74n12Enw8JLJn9yWrCveCtaBlDR311+QsENLfC1Zj79iVkQwLPDq7Dgi5w+8wyXdXqt3XR2I+EnO9mmLfAgR6aulU62uoU8U39oenLSdXXsNsezyUP6BCXIY1pEyJ1bO70L9FHs+xko2woyRR5gR4RZom+KWePih39o8fQpJ8S1kY+MC22SerVhm5Fx37H+muRbgwRIlyaDpyPnwQw== hart.ripley@arctiq.ca"
}

variable "sshuser" {
  default = "centos"
}
