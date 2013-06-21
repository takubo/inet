BEGIN {
	RS = ORS = "\r\n"

	if (ARGC >= 2) {
		html_file = ARGV[1]
	} else {
		html_file = "index.html"
	}

        net = "/inet/tcp/8080/0/0"

        while (net |& getline mes > 0) {
		func_name()
        }
	close(net)
}


function func_name()
{
	while ((getline content < html_file) > 0) {
		print content |& net
	}
	print ""
	close(net)
	close(html_file)
}
