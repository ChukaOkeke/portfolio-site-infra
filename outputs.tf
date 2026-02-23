# Define outputs to display
# Output the value of the Cloudflare URL for the deployed site
output "portfolio_url" {
  value       = "https://${cloudflare_pages_project.portfolio.subdomain}"
  description = "The live URL of your portfolio site"
}