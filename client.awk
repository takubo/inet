BEGIN {
        net = "/inet6/tcp/0/::1/8080"
        net = "/inet6/tcp/0/0:0:0:0:0:0:0:1/8080"
        net = "/inet/tcp/0/0:0:0:0:0:0:0:1/8080"
        net = "/inet/tcp/0/127.0.0.1/8080"
}

{
        print $0 |& net
}

END {
	close(net)
}
