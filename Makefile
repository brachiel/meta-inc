
PULP=node_modules/.bin/pulp
APP=meta-inc
BUNDLE_NAME=bundle
DIST=dist/

run: build serve
build: prep-static link-static browserify

browserify:
	${PULP} browserify > ${DIST}js/${BUNDLE_NAME}.js

compile:
	${PULP} build -O --to ${DIST}js/${BUNDLE_NAME}.js

prep-static:
	rm -rf ${DIST}
	mkdir -p ${DIST}
	mkdir -p ${DIST}js/

link-static:
	cd ${DIST} && cp -sr ../static/* .

copy-static:
	cp -r static/* ${DIST}

serve:
	cd ${DIST} && python -m SimpleHTTPServer 8080


