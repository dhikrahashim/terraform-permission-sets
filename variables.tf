locals {
    default_session_duration = "PT1H"

    default_relay_state = ""

  #----------------------------------------------------------------------------
  # Misc
  #----------------------------------------------------------------------------
    tags = {
        Terraform = "true"
    }
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "region_secondary" {
  type        = string
  description = "AWS Secondary Region for HA"
}
