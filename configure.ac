# Process this file with autoconf to produce a configure script.

#
# configure.ac for choicetool
#
# Copyright (C) 2008, 2009 Francesco Salvestrini
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

AC_INIT([Choicetool],
        m4_esyscmd([tools/maint/git-version-gen .tarball-version]),
        [choicetool-generic@nongnu.org],
        [choicetool],
        [http://savannah.nongnu.org/projects/choicetool])

# Check for a recent version of autoconf
AC_PREREQ([2.65])

# Place/find all autotools related files in the following directories
AC_CONFIG_AUX_DIR([tools/autotools])
AC_CONFIG_MACRO_DIR([tools/autotools/m4])
AC_CONFIG_SRCDIR([src/choicetool.in])

#
# For automake options (AM_INIT_AUTOMAKE options) see Makefile.am
# file, AUTOMAKE_OPTIONS variable
#
AM_INIT_AUTOMAKE([1.11.1 foreign std-options -Wall color-tests])

#
# Build related programs
#
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PROG_LN_S
AC_PROG_MKDIR_P
AC_PROG_GREP
AC_PROG_SED
AC_PROG_AWK

AX_PATH_MISSING([YAPP],            [yapp])
AX_PATH_MISSING([YAPP_TO_GRAMMAR], [yapp-to-grammar])
AX_PATH_MISSING([HELP2MAN],        [help2man])
AX_PATH_MISSING([SITETOOL],        [sitetool])
AX_PATH_MISSING([DNT],             [dnt])
AX_PATH_MISSING([SORT],            [sort])

#
# NOTE:
#     The following programs are used inside the libs (which will be installed)
#     directory, no AX_PATH_MISSING use allowed
#
# XXX FIXME:
#     Some programs should be in AX_PATH_MISSING too (WGET is an example)
#
AC_PATH_PROG([TIDY], [tidy])
AC_PATH_PROG([WPUT], [wput])
AC_PATH_PROG([WGET], [wget])

#
# Runtime related programs
#
AX_WITH_M4
AS_IF([test -z "$M4"],[
	AC_MSG_ERROR([Missing required M4 program])
],[
	AX_PROG_M4_VERSION([1.4.0],[],[
		AC_MSG_ERROR([Missing required M4 version >= 1.4.0])
	])
])

AX_WITH_PERL
AS_IF([test -z "$PERL"],[
	AC_MSG_ERROR([Missing required Perl interpreter])
],[
	AX_PROG_PERL_VERSION([5.8.0],[],[
		AC_MSG_ERROR([Missing required Perl interpreter version >= 5.8.0])
	])

	PERL_AUTOFRISK_CHECKS
	PERL_AUTOFRISK_SUMMARY
])

#
# A scheme interpreter (like Guile) is required ... fail if we cannot find it
#
AX_WITH_GUILE
AS_IF([test -z "$GUILE"],[
	AC_MSG_ERROR([Missing required Guile interpreter])
],[
	AX_PROG_GUILE_VERSION([1.6.4],[],[
		AC_MSG_ERROR([Missing required Guile interpreter version >= 1.6.4])
        ])

	#GUILE_MODULE_REQUIRED([sxml simple])
	#GUILE_MODULE_REQUIRED([sxml transform])

	GUILE_AUTOFRISK_CHECKS
	GUILE_AUTOFRISK_SUMMARY
])

AX_SPLIT_VERSION($PACKAGE_VERSION, AX_MAJOR_VERSION, AX_MINOR_VERSION, AX_MICRO_VERSION, AX_EXTRA_VERSION)
AX_PACKAGE_API([${AX_MAJOR_VERSION}"."${AX_MINOR_VERSION}])

AC_CONFIG_FILES([
	Makefile

	docs/Makefile
	docs/man/Makefile
	docs/info/Makefile

	src/Makefile

	libs/Makefile
	libs/scheme/Makefile
	libs/aclocal/Makefile
	libs/m4/Makefile
	libs/perl/Makefile
	libs/perl/Choicetool/Makefile
	libs/perl/Choicetool/Base/Makefile
	libs/perl/Choicetool/OS/Makefile
	libs/perl/Choicetool/RC/Makefile
	libs/perl/Choicetool/Data/Makefile
	libs/perl/Choicetool/Misc/Makefile
	libs/perl/Choicetool/Widgets/Makefile
	libs/perl/Choicetool/Rules/Makefile
	libs/perl/Choicetool/Frontends/Makefile
	libs/perl/Choicetool/Frontends/KConfig/Makefile

	site/Makefile
	site/in/Makefile

	tools/Makefile
	tools/maint/Makefile
	tools/autotools/Makefile
	tools/autotools/m4/Makefile

	tests/Makefile
])

AC_CONFIG_FILES([tools/maint/fetch],               [chmod +x tools/maint/fetch])
AC_CONFIG_FILES([tools/maint/wordwrap-detect],     [chmod +x tools/maint/wordwrap-detect])
AC_CONFIG_FILES([tools/maint/whitespace-detect],   [chmod +x tools/maint/whitespace-detect])
AC_CONFIG_FILES([tools/maint/gitlog-to-committers],[chmod +x tools/maint/gitlog-to-committers])
AC_CONFIG_FILES([tools/maint/gittag-to-date],      [chmod +x tools/maint/gittag-to-date])
AC_CONFIG_FILES([tools/maint/releases-to-news],    [chmod +x tools/maint/releases-to-news])

AC_OUTPUT

# Header
cat <<EOF

  ${PACKAGE_NAME} ${PACKAGE_API} (${PACKAGE_VERSION}) configuration summary

EOF

# Body
if test -n "$PERL" ; then
   echo "    Perl     : ${PERL} (${PERL_VERSION})"
else
   echo "    Perl     : not available"
fi
if test -n "$GUILE" ; then
   echo "    Guile    : ${GUILE} (${GUILE_VERSION})"
else
   echo "    Guile    : not available"
fi

# Footer
cat <<EOF

EOF
