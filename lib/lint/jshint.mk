JSHINT ?= jshint

# Check code quality.
#
# This target checks the quality of the source code, helping to detect errors
# and potential problems.  JSHint[^1] is used as the linter.
#
# JSHint can be installed by executing the following command:
#     $ npm install -g jshint
#
# [^1]: http://jshint.com/
lint: lint-src lint-tests

lint-src: $(SOURCES)
	$(JSHINT) $(JSHINTFLAGS) $^

lint-test: $(TESTS)
	$(JSHINT) $(JSHINTFLAGS) $^

$(localstatedir)/lint/jslint.xml: $(localstatedir)/lint
	$(JSHINT) $(JSHINTFLAGS) --reporter=jslint $(SOURCES) $(TESTS) > $@

$(localstatedir)/lint/checkstyle.xml: $(localstatedir)/lint
	$(JSHINT) $(JSHINTFLAGS) --reporter=checkstyle $(SOURCES) $(TESTS) > $@



.PHONY: lint lint-src lint-test
