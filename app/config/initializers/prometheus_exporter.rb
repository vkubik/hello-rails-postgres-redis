require 'prometheus_exporter/middleware'
require 'prometheus_exporter/server'

# Start a standalone exporter that the Rails app can send metrics to
if ENV["PROMETHEUS_EXPORTER"] != "disabled"
  server = PrometheusExporter::Server::WebServer.new bind: '0.0.0.0', port: 3000
  server.start
end
