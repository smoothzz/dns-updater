data "external" "myipaddr" {
    program = ["bash", "-c", "curl -s 'https://api.ipify.org?format=json'"]
}

resource "cloudflare_record" "proxmox" {
  zone_id = var.zone_id
  name    = "proxmox"
  value   = "${data.external.myipaddr.result.ip}"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "rancher" {
  zone_id = var.zone_id
  name    = "rancher"
  value   = "${data.external.myipaddr.result.ip}"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "k8s" {
  zone_id = var.zone_id
  name    = "k8s"
  value   = "${data.external.myipaddr.result.ip}"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "nginx" {
  zone_id = var.zone_id
  name    = "nginx"
  value   = "${data.external.myipaddr.result.ip}"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "rdp" {
  zone_id = var.zone_id
  name    = "rdp"
  value   = "${data.external.myipaddr.result.ip}"
  type    = "A"
  ttl     = 3600
}