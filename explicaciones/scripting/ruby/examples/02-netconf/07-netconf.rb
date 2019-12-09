#!/usr/bin/env ruby
# Target:
# * Show current network configuration: IP, mask, interface name
# Changes:
# * Execute command wiht system(command)
# * Filter only real IP with grep and grep -v
# * Save command output using %x[command]
# * Pretty and clear output
# * It's easy then show if_name
# * Print colors using Rainbow gem (gem install rainbow)

require 'rainbow'

# Get network information
output = %x[ip a | grep 'inet ' | grep -v 'host lo']
items = output.split()
ip = items[1]
if_name = items[7]

items = %x[ip route | grep default].split
gateway = items[2]

# Display Network information
puts "[INFO] Showing network configuration"
puts "  IF name : #{Rainbow(if_name).bright}"
puts "  IP/mask : #{Rainbow(ip).bright}"
puts "  Gateway : #{Rainbow(gateway).bright}"
