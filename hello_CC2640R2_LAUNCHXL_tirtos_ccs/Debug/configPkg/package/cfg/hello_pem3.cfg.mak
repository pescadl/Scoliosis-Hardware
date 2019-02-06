# invoke SourceDir generated makefile for hello.pem3
hello.pem3: .libraries,hello.pem3
.libraries,hello.pem3: package/cfg/hello_pem3.xdl
	$(MAKE) -f C:\Users\dayoung\school\ee364d\workspace_v8\hello_CC2640R2_LAUNCHXL_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\dayoung\school\ee364d\workspace_v8\hello_CC2640R2_LAUNCHXL_tirtos_ccs/src/makefile.libs clean

