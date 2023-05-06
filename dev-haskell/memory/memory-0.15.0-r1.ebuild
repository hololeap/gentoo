# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: +support_foundation,+support_deepseq,+support_bytestring,+support_basement

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="memory and related abstraction stuff"
HOMEPAGE="https://github.com/vincenthz/hs-memory"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://patch-diff.githubusercontent.com/raw/vincenthz/hs-memory/pull/81.patch -> ${PN}-81.patch"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND=">=dev-haskell/basement-0.0.7:=[profile?]
	>=dev-lang/ghc-8.0.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/foundation )
"

PATCHES=( "${DISTDIR}/${PN}-81.patch" )

src_configure() {
	haskell-cabal_src_configure \
		--flag=support_basement \
		--flag=support_bytestring \
		--flag=support_deepseq \
		--flag=support_foundation
}
