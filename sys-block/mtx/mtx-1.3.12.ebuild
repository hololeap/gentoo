# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Utilities for controlling SCSI media changers and tape drives"
HOMEPAGE="https://sourceforge.net/projects/mtx/"
SRC_URI="https://downloads.sourceforge.net/mtx/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ppc ppc64 ~riscv sparc x86"

PATCHES=( "${FILESDIR}"/${P}-fix-buildsystem.patch )

DOCS=( CHANGES COMPATABILITY FAQ README TODO )
HTML_DOCS=( mtxl.README.html )
