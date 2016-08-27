dnl $Id$
dnl config.m4 for extension lbhead

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(lbhead, for lbhead support,
dnl Make sure that the comment is aligned:
dnl [  --with-lbhead             Include lbhead support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(lbhead, whether to enable lbhead support,
dnl Make sure that the comment is aligned:
 [  --enable-lbhead           Enable lbhead support])

if test "$PHP_LBHEAD" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-lbhead -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/lbhead.h"  # you most likely want to change this
  dnl if test -r $PHP_LBHEAD/$SEARCH_FOR; then # path given as parameter
  dnl   LBHEAD_DIR=$PHP_LBHEAD
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for lbhead files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       LBHEAD_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$LBHEAD_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the lbhead distribution])
  dnl fi

  dnl # --with-lbhead -> add include path
  dnl PHP_ADD_INCLUDE($LBHEAD_DIR/include)

  dnl # --with-lbhead -> check for lib and symbol presence
  dnl LIBNAME=lbhead # you may want to change this
  dnl LIBSYMBOL=lbhead # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $LBHEAD_DIR/$PHP_LIBDIR, LBHEAD_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_LBHEADLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong lbhead lib version or lib not found])
  dnl ],[
  dnl   -L$LBHEAD_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(LBHEAD_SHARED_LIBADD)

  PHP_NEW_EXTENSION(lbhead, lbhead.c, $ext_shared)
fi
