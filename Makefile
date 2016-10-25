stop_stf:
	sudo systemctl stop nginx
	sudo systemctl stop stf-app@3100
	sudo systemctl stop stf-auth@3200
	sudo systemctl stop stf-storage-plugin-apk@3300
	sudo systemctl stop stf-storage-plugin-image@3400
	sudo systemctl stop stf-storage-temp@3500
	sudo systemctl stop stf-websocket@3600
	sudo systemctl stop stf-api@3700
	sudo systemctl stop stf-provider@main_app
	sudo systemctl stop stf-processor@proc_1
	sudo systemctl stop stf-triproxy-dev
	sudo systemctl stop stf-triproxy-app
	sudo systemctl stop stf-notify-slack
	sudo systemctl stop stf-reaper
	sudo systemctl stop rethinkdb-proxy-28015
	sudo systemctl stop rethinkdb
	sudo systemctl stop adbd


start_stf:
	sudo systemctl daemon-reload
	sudo systemctl start adbd
	sudo systemctl start rethinkdb
	sudo systemctl start rethinkdb-proxy-28015
	sudo systemctl start stf-app@3100
	sudo systemctl start stf-auth@3200
	sudo systemctl start stf-storage-plugin-apk@3300
	sudo systemctl start stf-storage-plugin-image@3400
	sudo systemctl start stf-storage-temp@3500
	sudo systemctl start stf-websocket@3600
	sudo systemctl start stf-api@3700
	sudo systemctl start stf-processor@proc_1
	sudo systemctl start stf-triproxy-dev
	sudo systemctl start stf-triproxy-app
	sudo systemctl start stf-reaper
	sudo systemctl start stf-notify-slack
	sudo systemctl start stf-provider@main_app
	sudo systemctl start nginx
