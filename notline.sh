#!/usr/bin/env bash

previous_status=""
config=${1:-~/.config/ocaml-xmpp-client/notification.state}
 
while true; do
    message=$(cat $config)
    case "$message" in
        'disconnected_notifications')
            status="You have new events and your client is not online." ;;

        'connected_notifications')
            status="You have new events!" ;;

        'disconnected')
            status="Your client has disconnected." ;;

        'connected')
            status="Your client is now online." ;;

        'quit')
            status="Your client was closed or crashed." ;;

        *) status="Unknown status."

    esac

    if [[ $status != $previous_status ]]; then
        terminal-notifier -message  "\"$status\"" -title "Jackline"
    fi

    previous_status=$status
    sleep 5;
done