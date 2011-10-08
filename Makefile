# TODO: use make's conditionals instead of sh's
#       http://www.gnu.org/software/make/manual/html_node/Conditional-Syntax.html

VIM_BUNDLE := "vim" \
              "vimrc" \
              "gvimrc" \
              "vimpagerrc"

# Function to deploy config files. Takes 1 argument: name-of-bundle.
# It will loop through all bundle items and create symlinks according to.
# So, existed files and dirs will be overwritten with symlinks.
deploy = \
	@for item in $(1); do \
		if [ -e "${PWD}/$$item" ]; then \
			if [ -d "${PWD}/$$item" ]; then \
				if [ -d "${HOME}/.$$item" ]; then \
					rm -rf "${HOME}/.$$item"; \
				fi; \
			fi; \
			ln -Ffs "${PWD}/$$item" "${HOME}/.$$item"; \
		fi; \
	done

# Confirmation prompt requires answer "yes" to continue.
all:
	@while true; do \
		echo "It might hurt your feelings. Are you sure ot continue? (yes/no)"; \
		read answer; \
		if [[ $$answer != "yes" ]]; then \
			echo "Nothing was made. Bye."; \
			exit; \
		else \
			$(MAKE) vimbundle; \
			exit; \
		fi; \
		break; \
	done

# Install vim related config files.
vimbundle:
	$(call deploy,$(VIM_BUNDLE));
	@ echo "vim bundle installed!";

.PHONY: all vim
