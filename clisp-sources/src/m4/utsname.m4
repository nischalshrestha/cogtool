dnl -*- Autoconf -*-
dnl Copyright (C) 1993-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible, Marcus Daniels, Sam Steingold.

AC_PREREQ(2.57)

AC_DEFUN([CL_UTSNAME],
[CL_COMPILE_CHECK([sys/utsname.h and struct utsname], cl_cv_struct_utsname,
[#include <sys/utsname.h>],
[struct utsname u;], AC_DEFINE(HAVE_SYS_UTSNAME_H,,[have <sys/utsname.h> and it defines struct utsname]))dnl
])
