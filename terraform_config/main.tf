terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}

# Configure the Datadog provider
provider "datadog" {
  api_key = "5f48cbf68f65f880f38f655bed58fe26"
  app_key = "22f39f6fee131d1bc208e36b8dc3a83fb614d518"
  api_url = "https://api.ddog-gov.com/"
}
