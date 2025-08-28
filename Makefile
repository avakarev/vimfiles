noop:
	@echo "Nothing to do, choose target to run"

LINKS = \
	vim \
	vimrc \
	gvimrc

link: $(addprefix ~/.,$(LINKS))
.PHONY: link

~/.%: ./%
	ln -sf $(abspath $<) $@

clean:
	rm -f $(addprefix ~/.,$(LINKS))
.PHONY: clean

init:
	git submodule update --init
.PHONY: init
