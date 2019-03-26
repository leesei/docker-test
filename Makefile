all:
	dd if=/dev/zero of=50mb.bin bs=1M count=50
	touch file

docker:
	docker build -t test .

clean:
	rm 50mb.bin file
