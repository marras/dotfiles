function FindProxyForURL(url, host) {
  if (shExpMatch(host, "*.dev")) {
    return "PROXY localhost:3000";
  }
  if (shExpMatch(host, "*.dev2")) {
    return "PROXY localhost:3001";
  }

  return "DIRECT";
}
