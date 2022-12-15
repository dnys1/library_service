.PHONY: build
build: library.json
	dart run smithy_codegen -f library.json --server -o generated

library.json: library.smithy
	docker run --rm -v ${PWD}:/models smithy ast -d /smithy/lib/traits /models/library.smithy > library.json 
