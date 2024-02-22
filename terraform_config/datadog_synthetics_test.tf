resource "datadog_synthetics_test" "beaconapi" {
  type    = "api"
  subtype = "http"

  request_definition {
    method = "GET"
    url    = "https://dummy.restapiexample.com/api/v1/employees"
  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = "200"
  }

  locations = ["aws:us-gov-west-1"]
  options_list {
    tick_every          = 900
    min_location_failed = 1
  }

  name    = "Beacon API Check"
  message = "Oh no! Light from the Beacon app is no longer shining!"
  tags    = ["app:beacon", "env:demo"]

  status = "live"
}