#!/bin/bash
TITLE="System Information Report $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
	cat <<- _EOF_
	<h2>System Uptime</h2>
	<pre>$(uptime)</pre>
	_EOF_
	return
}

report_disk_space () {
	cat <<- _EOF_
	<h2>Disk Space Utilization</h2>
	<pre>$(df -h)</pre>
	_EOF_
	return
}

report_home_space () {
	cat <<- _EOF_
	<h2>Home Space Utilization</h2>
	<pre>$(du -sh /home/*)</pre>
	_EOF_
	return
}

cat << _EOF_
<html>
	<head>
 		<title>$TITLE</title>
 	</head>
 	<body>
 		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
		$(report_uptime)
		$(report_disk_space)
		$(report_home_space)
 	</body>
</html>
_EOF_
