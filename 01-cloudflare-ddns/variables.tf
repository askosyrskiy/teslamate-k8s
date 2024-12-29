variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "namespace" {
  description = "The namespace to deploy cloudflare-ddns"
  type        = string
  default     = "cloudflare-ddns"
}

variable "cloudflare_domains" {
  description = "Cloudflare domains to update"
  type        = string
}

variable "cloudflare_api_key" {
  description = "Cloudflare API key"
  type        = string
  sensitive   = true
}
