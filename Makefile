
all: \
    d1808-contra-p0339.html \
    d1837-remove-class-type-nttps.html \
    d1144-object-relocation.html \
    d1153-volatile-subobjects.html \
    d1154-comparable-traits.html \
    d1155-more-implicit-moves.html \
    d1518-container-deduction-guides.html \
    d2266-implicit-move-rvalue-ref.html \
    d2538-adl-proof-std-projected.html

%.html: %.bs
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@
