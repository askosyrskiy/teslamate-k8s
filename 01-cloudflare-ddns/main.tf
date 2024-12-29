resource "helm_release" "cloudflare_ddns" {
  name       = "cloudflare-ddns"
  namespace  = var.namespace
  repository = "https://askosyrskiy.github.io/helm-charts"
  chart      = "cloudflare-ddns"
  version    = "1.0.2"
  atomic     = true
  create_namespace = true

  set {
    name  = "cloudflareApiToken"
    value = var.cloudflare_api_key
  }

  set {
    name  = "domains"
    value = var.cloudflare_domains
  }

}
