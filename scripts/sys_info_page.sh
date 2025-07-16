#!/bin/bash
TITLE="System Information Report $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated $CURRENT_TIME, by $USER"

echo "<html>
	<head>
 		<TITLE>$TITLE/TITLE>
 	</head>
 	<body>
 		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
 	</body>
</html>"
