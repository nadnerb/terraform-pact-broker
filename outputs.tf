output "server_address" {
    value = "${aws_instance.server.0.public_dns}"
}

output "server_ip" {
    value = "${aws_instance.server.0.public_ip}"
}
