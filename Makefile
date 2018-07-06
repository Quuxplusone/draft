
d1144.html:
	curl https://api.csswg.org/bikeshed/ -F file=@d1144.bs -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@d1144.bs -F force=1 > d1144.html
