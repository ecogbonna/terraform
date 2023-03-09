output "mynetwork_self_link" {
  description = "URI of network mynetwork"
  value       = google_compute_network.mynetwork.self_link
}
output "mynetwork_id" {
  description = "ID of mynetwork"
  value       = google_compute_network.mynetwork.id
}
