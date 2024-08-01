data "spotify_track" "dariyaganj" {
  spotify_id = "3c8SjGyaf03Czq1eaa8xNs"
}

data "spotify_track" "starboy" {
  spotify_id = "7MXVkk9YMctZqd1Srtv4MB"
}

resource "spotify_playlist" "bollywood" {
  name        = "Vibe with me"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    data.spotify_track.dariyaganj.id,
    data.spotify_track.starboy.id
  ]
}

