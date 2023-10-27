
all: \
    d2447-std-span-over-initializer-list.html \
    d1808-contra-p0339.html \
    d1837-remove-class-type-nttps.html \
    d1144-object-relocation.html \
    d1153-volatile-subobjects.html \
    d1154-comparable-traits.html \
    d1155-more-implicit-moves.html \
    d1518-container-deduction-guides.html \
    d2266-implicit-move-rvalue-ref.html \
    d2538-adl-proof-std-projected.html \
    d2596-improve-hive-reshape.html \
    d2752-static-storage-for-braced-initializers.html \
    d2767-flat-omnibus.html \
    d2848-std-is-uniqued.html \
    d2903-ignore-explicit.html \
    d2952-auto-operators.html \
    d2953-forbid-defaulting-rr-assignment.html \
    d3016-valarray.html \
    d3031-lambda.html

%.html: %.bs
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@
