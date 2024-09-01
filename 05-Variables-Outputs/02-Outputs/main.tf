data "http" "sample_url" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"
  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

output "url_status_code" {
  value       = data.http.sample_url.status_code
  description = "Status code."
  sensitive   = false
}

output "boolean_output" {
  value       = true
  description = "This value is depends on the http data."
  depends_on = [
    data.http.sample_url
  ]
}
