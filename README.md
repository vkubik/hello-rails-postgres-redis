Grafana URL http://localhost:3001/
Prometheus URL http://localhost:9090/

#Metrics to watch
#Rails app:
- Request latency (histogram)
- Request count (success vs error)
- Database query duration
- Redis cache hits/misses
- Error rates
#Postgres:
- Connection count (active vs idle)
- Cache hit ratio
- Slow queries count / duration
- Deadlocks
- Replication lag (if applicable)
- Checkpoints (count, duration)
- Disk usage
#Redis:
- Memory usage
- Evicted keys count
- Hits vs misses
- Connected clients
- Command processing latency
- CPU usage
