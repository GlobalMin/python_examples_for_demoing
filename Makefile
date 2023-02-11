PY=python -m py_compile

.PHONY:
	all
	test
	install
	compile
all:
	@make install
install:
	python scripts/install.py
compile:
	$(PY) test.py
empty:
	# this is a comment
