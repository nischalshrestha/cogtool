dnl Copyright (C) 1993-2005 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible, Marcus Daniels.

AC_PREREQ(2.13)

AC_DEFUN([CL_SMALL_STRUCT_RETURN],
[AC_CACHE_CHECK([whether small structs are returned in registers], cl_cv_c_struct_return_small, [
AC_TRY_RUN(GL_NOCRASH[
typedef struct { long x; } foo; long y;
foo foofun () { foo f; f.x = y; return f; }
long (*fun) () = (long (*) ()) foofun;
int main()
{ nocrash_init();
  y = 37; if ((*fun)() != 37) exit(1);
  y = 55; if ((*fun)() != 55) exit(1);
  exit(0);
}], cl_cv_c_struct_return_small=yes, cl_cv_c_struct_return_small=no,
dnl When cross-compiling, don't assume anything.
dnl There are even weirder return value passing conventions than pcc.
cl_cv_c_struct_return_small="guessing no")
])
case "$cl_cv_c_struct_return_small" in
  *yes) AC_DEFINE(__SMALL_STRUCT_RETURN__) ;;
  *no) ;;
esac
])
