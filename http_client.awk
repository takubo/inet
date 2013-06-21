BEGIN {
	RS = ORS = "\r\n"
	#HttpService = "/inet/tcp/0/proxy.robot.khi.co.jp/8080"
	HttpService = "/inet/tcp/0/localhost/8080"
	print "GET http://www.gihyo.co.jp" |& HttpService
	while ((HttpService |& getline) > 0)
		print $0
	close(HttpService)
}
