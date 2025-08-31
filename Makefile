
VERSION:=$(shell mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

help:     ## Show this help.
	@sed -n 's/^##//p' $(MAKEFILE_LIST)
	@grep -E '^[/%a-zA-Z0-9._-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

cheerpj: html/index.html  html/cheerpj-test-$(VERSION).jar ## run cheerpj
	(cd html ; npx serve)


html/cheerpj-test-$(VERSION).jar: target/cheerpj-test-$(VERSION).jar
	cp target/cheerpj-test-$(VERSION).jar html

target/cheerpj-test-$(VERSION).jar:
	mvn

clean:
	rm html/*.jar