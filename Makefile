test:
	for i in $$(seq 10); do \
		http PUT https://getlock.agrrh.com/api/v1/~demo/dummy$${i} \
			X-Getlock-Auth:demo \
			ttl=$$(($${RANDOM}%900+60)); \
	done
