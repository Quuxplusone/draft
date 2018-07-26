
all: volatile-subobjects.html d1144.html comparable-traits.html

%.html: %.bs
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@
