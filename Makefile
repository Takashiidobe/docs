all:
	make dev	
build:
	make dev 
dev:
	make clean && make copy && make pandoc && make sed && make remove-md	
deploy:
	make dev && make workbox && ntl deploy --prod
copy:
	./bin/copy 
pandoc:
	./bin/pandoc
sed:
	./bin/sed 
remove-md:
	./bin/remove-md 
clean:
	./bin/clean 