#!/bin/bash
for cnt in $(seq 100)
do
curl -H 'Cache-Control: no-cache' https://$SPRING_CLOUD_SERVICE-api-gateway.azuremicroservices.io/api/customer/owners?$(date +%s)
wait
done
