
## Backend Services
- Backend App 1 → Port 8081
- Backend App 2 → Port 8082

Each backend is a simple HTTP service used to simulate real applications.

## Reverse Proxy Logic
- Requests to `/app1` are forwarded to backend app on port 8081
- Requests to `/app2` are forwarded to backend app on port 8082

## Tools & Technologies
- Nginx
- Linux
- Python (http.server)
- curl

## How to Test
```bash
curl http://localhost/app1
curl http://localhost/app2

