output "public_ip" {
  description = "Public IP"
  value       = linode_instance.webserver.ipv4
}


 resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl",
    {
     webservers = linode_instance.webserver.ipv4
    }
  )
  filename = "../ansible/hosts"
}