variable "client_id" {
  default = "4002f287-4f19-45d0-b572-28669515529b"
}
variable "client_secret" {
  default = "81a5b777-a07a-47ce-b8b8-40a41fd965e3"
}

variable "agent_count" {
  default = 3
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable cluster_name {
  default = "k8stest"
}

variable resource_group_name {
  default = "nic-k8stest"
}

variable location {
  default = "Central US"
}
