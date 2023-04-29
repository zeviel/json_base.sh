#!/bin/bash

api="https://jsonbase.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function store_json() {
 	# 1 - path: (string): <JSON object path>
  	# 2 - data: (string): <JSON data>
	curl --request PUT \
		--url "$api/$1/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json" \
		--data "$2"
}

function get_json() {
 	# 1 - path: (string): <JSON object path>
    curl --request GET \
        --url "$api/$1/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
