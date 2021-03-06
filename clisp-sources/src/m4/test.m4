dnl -*- Autoconf -*-
dnl Copyright (C) 2005 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Sam Steingold.

AC_PREREQ(2.13)

AC_DEFUN([CL_TEST_NT],[dnl check that test(1) can serve as make(1)
AC_CACHE_CHECK(whether test -nt works, cl_cv_test_nt, [
rm -f conftestfile1 conftestfile2
touch conftestfile1
# see makemake.in, rule "anymodule":
if eval 'test -f conftestfile1 -a conftestfile1 -nt conftestfile2 2>/dev/null'
then cl_cv_test_nt=yes
else cl_cv_test_nt=no
fi
rm -f conftestfile1
])
TEST_NT=${cl_cv_test_nt-no}
AC_SUBST(TEST_NT)dnl
])
