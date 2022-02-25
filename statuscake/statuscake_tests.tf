resource "statuscake_uptime_check" "example_com" {
  name           = "Example"
  check_interval = 30
  confirmation   = 3
  trigger_rate   = 10

  contact_groups = []

  http_check {
    enable_cookies   = false
    follow_redirects = true
    timeout          = 20
    user_agent       = "terraform managed uptime check"
    validate_ssl     = true

    status_codes = [
      "400"
    ]
  }

  monitored_resource {
    address = "https://www.example.com"
  }
}


# resource "statuscake_uptime_check" "grafana_secath_fr" {
#   name           = "grafana"
#   check_interval = 300
#   confirmation   = 1
#   trigger_rate   = 1
# 
#   contact_groups = [
#     "247182"
#   ]
# 
#   http_check {
#     enable_cookies   = false
#     follow_redirects = false
#     timeout          = 20
#     user_agent       = "terraform managed uptime check"
#     validate_ssl     = true
# 
#     status_codes = [
#       "202",
#       "403",
#       "404",
#       "405",
#     ]
#   }
# 
#   monitored_resource {
#     address = "https://grafana.secath.fr/api/health"
#   }
# 
#   tags = [
#     "production",
#   ]
# }
# 
# # resource "statuscake_test" "grafana" {
# #   website_name = "https://grafana.secath.fr"
# #   website_url  = "https://grafana.secath.fr/api/health"
# #   test_type    = "HTTP"
# #   check_rate   = 300
# #   contact_group = ["247182"]
# # }
# # 