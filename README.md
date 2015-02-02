# docker-cluster

You can use this docker image to test [Machine](https://github.com/docker/machine) and [Swarm](https://github.com/docker/swarm).

Run these commands as root:

	$ alias machine="docker run --privileged -it  \
		-v /var/run/docker.sock:/var/run/docker.sock  \
		-v /root/.docker:/root/.docker --rm  \
		emilevauge/docker-cluster machine"
	$ alias swarm="docker run --privileged -it  \
		-v /var/run/docker.sock:/var/run/docker.sock  \
		-v /root/.docker:/root/.docker --rm  \
		emilevauge/docker-cluster swarm"

You now have swarm and machine using docker into docker!

	$ machine create -d google --google-project YOUR_PROJECT test
	$ machine ls
	NAME   ACTIVE   DRIVER   STATE     URL
	test            google   Running   tcp://1.2.3.4:2376
	$ docker $(machine config test) ps
	
	$ swarm create
	5b6dd17590968970d15c91115fa34je9
	
