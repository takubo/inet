#BEGIN {
#        net = "/inet6/tcp/0/::1/8080"
#        net = "/inet6/udp/0/0:0:0:0:0:0:0:1/60000"
#}
#
#{
#        print $0 |& net
#}
#
#END {
#	close(net)
#}

BEGIN {
	"/inet/udp/0/localhost/8888" |& getline
	print $0
	fflush()
	close("/inet/udp/0/localhost/8888")
}

