#!/usr/bin/gawk -f
BEGIN {
	RS = ORS = "\r\n"

	if (ARGC >= 2) {
		html_file = ARGV[1]
	} else {
		html_file = "index.html"
	}

        net = "/inet/tcp/8080/0/0"

        while (net |& getline mes > 0) {
	print mes
		func_name()
        }
	close(net)
}


function func_name()
{
	print "HTTP/1.0 200 OK"
	print "Cache-Control: private"
	print "Content-Type: text/html"
	print ""
	while ((getline content < html_file) > 0) {
		print content |& net
	}
	print ""
	close(net)
	close(html_file)
}
