.PHONY: all clean clean-cache pristine

all: clean

clean:
	rm -rf auto-save-list eln-cache elpaca/builds* history transient

clean-cache:
	rm -rf elpaca/cache

# CAVEAT EMPTOR: Use as a last resort!  It will wipe out the cloned repos.
pristine: clean clean-cache
	rm -rf elpaca
