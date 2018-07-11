
volatile-subobjects.html: volatile-subobjects.bs
	curl https://api.csswg.org/bikeshed/ -F file=@volatile-subobjects.bs -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@volatile-subobjects.bs -F force=1 > $@

d1144.html: d1144.bs
	curl https://api.csswg.org/bikeshed/ -F file=@d1144.bs -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@d1144.bs -F force=1 > $@
