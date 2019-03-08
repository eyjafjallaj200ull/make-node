JSLINT ?= jslint

# Detect stylistic errors and potential problems.
#
# This target is included for projects using [JSLint](https://www.jslint.com/)
# as a linter.
.PHONY: lint
lint: $(SOURCES) $(TESTS)
	$(JSLINT) $(JSLINTFLAGS) $^

.PHONY: lint-src
lint-src: $(SOURCES)
	$(JSLINT) $(JSLINTFLAGS) $^

.PHONY: lint-test
lint-test: $(TESTS)
	$(JSLINT) $(JSLINTFLAGS) $^
