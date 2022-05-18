# not using this for now to reduce initial complexity during development
# Firewalls
# resource "digitalocean_firewall" "jun_sisters_wiki_web_fw" {
#     name = "${var.name_prefix}-${var.env}-web_fw"
#     droplet_ids = [digitalocean_droplet.jun_sisters_wiki_single_node.id]
#     tags = [digitalocean_tag.web_node.name]
    
#     inbound_rule {
#         protocol         = "tcp"
#         port_range       = "80"
#         source_addresses = ["0.0.0.0/0", "::/0"]
#     }

#     inbound_rule {
#         protocol         = "tcp"
#         port_range       = "443"
#         source_addresses = ["0.0.0.0/0", "::/0"]
#     }

#     outbound_rule {
#         protocol              = "tcp"
#         port_range            = "53"
#         destination_addresses = ["0.0.0.0/0", "::/0"]
#     }

#     outbound_rule {
#         protocol              = "udp"
#         port_range            = "53"
#         destination_addresses = ["0.0.0.0/0", "::/0"]
#     }

#     outbound_rule {
#         protocol              = "icmp"
#         destination_addresses = ["0.0.0.0/0", "::/0"]
#     }
# }