BEGIN {
        net = "/inet6/tcp/8080/0/0"
        net = "/inet4/tcp/8080/0/0"
for (; ; ) {
    print "waiting..."
        while (net |& getline mes > 0)
		print mes
	close(net)
    }
}

