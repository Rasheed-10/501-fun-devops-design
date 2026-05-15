# Observability

The platform uses Azure Monitor, Log Analytics and Application Insights for central observability.

## Metrics

Important metrics include:

- API request rate
- API latency
- API error rate
- Container CPU usage
- Container memory usage
- Event Hub throughput
- Service Bus queue depth
- Video processing duration
- Failed video processing jobs
- Failed SMS delivery
- Failed email delivery

## Logs

Centralised logs should include:

- Web application logs
- Backend API logs
- Worker logs
- Device ingestion logs
- Video processing logs
- Security logs
- Pipeline deployment logs

## Alerts

Alerts should be created for:

- High API error rate
- Increased response latency
- Service Bus queue backlog
- Failed video processing jobs
- Event Hub throttling
- Container restart loops
- Failed SMS or email notifications
- Database connection issues

## Dashboards

Dashboards should show:

- Platform health
- API traffic
- Error rates
- Device ingestion volume
- Queue depth
- Video processing status
- Notification delivery status
- Infrastructure resource usage