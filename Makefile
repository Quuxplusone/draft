
all: \
    d1144-object-relocation.html \
    d1153-volatile-subobjects.html \
    d1154-comparable-traits.html \
    d1155-more-implicit-moves.html \
    d1518-container-deduction-guides.html

%.html: %.bs
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@
