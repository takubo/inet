#BEGIN {
#        net = "/inet6/udp/60000/0/0"
#
#        while (net |& getline mes > 0) {
#		print mes
#        }
#	close(net)
#}

     BEGIN {
       print strftime() |& "/inet/udp/8888/0/0"
       fflush()
       close("/inet/udp/8888/0/0")
     }
