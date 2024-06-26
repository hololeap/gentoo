# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

MY_PN="LinuxSPA"
DESCRIPTION="Linux Serial Protocol Analyser"
HOMEPAGE="https://sourceforge.net/projects/serialsniffer/"
SRC_URI="https://downloads.sourceforge.net/serialsniffer/${MY_PN}-${PV}.tgz"
S="${WORKDIR}/${MY_PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PATCHES=( "${FILESDIR}/${P}-compile-fix.patch" )

src_prepare() {
	default
	sed -i Makefile \
		-e 's| -o | $(LDFLAGS)&|g' \
		|| die "sed Makefile"
}

src_compile() {
	emake \
		CC="$(tc-getCC)" \
		CFLAGS="${CFLAGS} -Wall" \
		LDFLAGS="${LDFLAGS}"
}

src_install() {
	dobin LinuxSPA std232
	dodoc ASCII_Filter.txt BCircuit.txt LinuxSPA.png READING_Materials.txt \
		README TODO connector-1a.ps connector-2a.ps cooked.file raw.file
}
