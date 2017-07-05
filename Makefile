all: test

test:
	docker build -t anycable-go-test .
	docker run anycable-go-test . | grep -q "0.4.1"
