#!/usr/bin/with-contenv bashio

# wait for scrutiny to load
bashio::net.wait_for 8000

scrutiny-collector-metrics run >/dev/null && bashio::log.info "Local Devices Added" || bashio::log.error "Local Devices Not Added" 
#|| bashio::log.error "Privileged mode is disabled, the addon will stop"
# ; \ s6-svscanctl -t /var/run/s6/services
