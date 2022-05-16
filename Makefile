
default:

clean:
	rm -rf ./build

fypp:
	fypp app/main.fypp app/main.f90

build: fypp
	fpm build

run: build
	fpm run
