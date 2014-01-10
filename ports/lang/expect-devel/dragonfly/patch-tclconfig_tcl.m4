--- tclconfig/tcl.m4.orig	2006-01-25 21:52:11.000000000 +0000
+++ tclconfig/tcl.m4
@@ -1576,7 +1576,7 @@ dnl AC_CHECK_TOOL(AR, ar)
 	    UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}.a'
 	    TCL_LIB_VERSIONS_OK=nodots
 	    ;;
-	FreeBSD-*)
+	FreeBSD-*|DragonFly-*)
 	    # FreeBSD 3.* and greater have ELF.
 	    SHLIB_CFLAGS="-fPIC"
 	    SHLIB_LD="ld -Bshareable -x"
@@ -1594,7 +1594,7 @@ dnl AC_CHECK_TOOL(AR, ar)
 	    	LDFLAGS="$LDFLAGS -pthread"
 	    fi
 	    case $system in
-	    FreeBSD-3.*)
+	    FreeBSD-3.*|DragonFly-*)
 	    	# FreeBSD-3 doesn't handle version numbers with dots.
 	    	UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}.a'
 	    	SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}.so'
@@ -1953,7 +1953,7 @@ dnl AC_CHECK_TOOL(AR, ar)
 		    ;;
 		IRIX*)
 		    ;;
-		NetBSD-*|FreeBSD-*)
+		NetBSD-*|FreeBSD-*|DragonFly-*)
 		    ;;
 		Darwin-*)
 		    ;;
