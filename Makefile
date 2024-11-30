.PHONY: run-local docker-run docker-build

run-local:
	sudo apt-get update -y
	sudo apt-get install php apache2 -y
	cd /var/www/html/ && \
	sudo systemctl start apache2 && \
	sudo systemctl enable apache2

docker-run:
	@docker run -it -d -p 8007:80 anupkrishna2000/myphpexam:v4

docker-build:
	echo "Anupom@1234" | docker login -u anupkrishna2000 --password-stdin
	docker build -t anupkrishna2000/myphpexam:v4 .
	docker push anupkrishna2000/myphpexam:v4
