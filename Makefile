all: test

test:
	docker build -t anycable-go-test .
	docker run anycable-go-test | grep -q "0.5.2"

clean:
	docker ps -a | grep "anycable-go-test" | awk '{ print $$1 }' | xargs -I@ docker rm @
	docker rmi anycable-go-test

.PHONY : test clean
