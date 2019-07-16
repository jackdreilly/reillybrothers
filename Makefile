all: serve

dist:
	npm run build

dist.zip: dist
	zip -r dist dist

deploy: dist.zip
	./deploy.sh

clean:
	rm -rf dist*

serve:
	npm run serve