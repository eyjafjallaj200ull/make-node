MRDOC ?= mr-doc

docs:
	$(MRDOC) $(MRDOCFLAGS) -s $(SRCDIR) -o $(DOCSDIR)

clean-docs:
	-rm -r $(DOCSDIR)


.PHONY: docs clean-docs