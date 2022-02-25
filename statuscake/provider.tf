terraform { 
  required_providers {
    statuscake = {
      source = "statuscakedev/statuscake"
      version = ">=2.0.0"
    }
  }
}

provider "statuscake" {
  api_token = var.statuscake_api_key
  statuscake_custom_endpoint = "https://api.statuscake.com/"
}
