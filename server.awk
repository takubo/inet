BEGIN {
        net = "/inet6/tcp/8080/0/0"

        while (net |& getline mes > 0) {
		print mes
        }
	close(net)
}

