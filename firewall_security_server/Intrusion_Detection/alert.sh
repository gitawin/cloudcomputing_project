#!/bin/bash

# Constants for log generation
IP_ADDRESS_POOL=(
    "192.168.1.1" "192.168.1.2" "192.168.1.3" "192.168.1.4"
    "10.0.0.1" "10.0.0.2" "10.0.0.3" "10.0.0.4"
    "172.16.0.1" "172.16.0.2" "172.16.0.3" "172.16.0.4"
)

EVENT_TYPES=(
    "ALLOW" "DENY" "INTRUSION_DETECTED" "PORT_SCAN" "SYN_FLOOD"
)

# Function to generate a random IP address
random_ip() {
    echo ${IP_ADDRESS_POOL[RANDOM % ${#IP_ADDRESS_POOL[@]}]}
}

# Function to generate a random event
random_event() {
    echo ${EVENT_TYPES[RANDOM % ${#EVENT_TYPES[@]}]}
}

# Function to generate a mock log entry
generate_log_entry() {
    TIMESTAMP=$(date -d "$((RANDOM % 3600)) seconds ago" +"%Y-%m-%dT%H:%M:%S")
    IP_SRC=$(random_ip)
    IP_DST=$(random_ip)
    EVENT_TYPE=$(random_event)

    echo "$TIMESTAMP - $EVENT_TYPE - Source: $IP_SRC, Destination: $IP_DST"
}

# Main function to run the log generator
main() {
    NUM_LOGS=100  # Number of log entries to generate
    LOG_FILE="mock_security_logs.txt"

    # Generate logs and write to file
    {
        for ((i=0; i<NUM_LOGS; i++)); do
            generate_log_entry
        done
    } > "$LOG_FILE"

    echo "Generated $NUM_LOGS mock security log entries in '$LOG_FILE'."
}

# Execute the main function
main
