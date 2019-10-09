OBJ := document

wd != pwd
build-path = $(wd)/build


all: builddir
	@echo Compiling latex $@
	@pdflatex -halt-on-error -output-dir $(build-path) $(wd)/$(OBJ).tex


builddir:
	@echo $@ is $(build-path)
	@mkdir -p $(build-path)


clean:
	@echo $@
	@rm -rf $(build-path)


check:
	@chktex $(wd)/$(OBJ).tex
