terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "0.2.0"  # Update to a valid version
    }
  }
}

provider "spotify" {
  api_key = var.api_key
}

variable "spotify_api_token" {
  description = "Spotify API Token"
  type        = string
}
