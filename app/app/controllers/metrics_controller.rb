require 'prometheus/client'

class MetricsController < ActionController::API
  def index
    prometheus = Prometheus::Client.registry
    # Add custom metrics here if you want
    render plain: prometheus.metrics.map(&:to_prometheus_text).join("\n")
  end
end
