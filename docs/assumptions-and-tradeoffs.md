# Assumptions and Trade-offs

## Assumptions

- The platform needs to support multiple venues sending device events, logs and video clips.
- The web application is used to manage central configuration.
- Backend APIs need to be secure, scalable and accessible over HTTPS.
- Venue devices may have intermittent connectivity, so asynchronous communication is required.
- Video processing does not need complex live streaming in the first version.
- The solution should be cloud-native, automated and scalable.

## Trade-offs

### Azure Container Apps instead of AKS

I selected Azure Container Apps for the first version because it supports containerised workloads with less operational overhead than AKS. 

AKS would be considered later if the platform required advanced Kubernetes controls.

### Event Hubs and Service Bus

Event Hubs is used for high-volume telemetry and log ingestion from devices. Service Bus is used for message processing where delivery guarantees, retries and dead-letter queues are important.

### Video Processing

Azure Blob Storage is used for raw and processed video assets. 

### Cloudflare 

Cloudflare provides edge DNS, WAF, CDN, bot protection, rate limiting and DDoS protection. 