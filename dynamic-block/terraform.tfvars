ingresses = {
  https = {
    from_port = 443
    to_port   = 443
  }
}

egresses = {
  http = {
    from_port = 80
    to_port   = 80
  },
  https = {
    from_port = 443
    to_port   = 443
  }
}