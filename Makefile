build:
	docker build --no-cache=true --rm=true -t codescout .

test:
	docker run -i -t codescout /bin/bash

tag:
	docker tag codescout sosedoff/codescout

clean:
	docker stop $(docker ps -a -q) ; echo
	docker rm $(docker ps -a -q) ; echo
	docker rmi sosedoff/codescout