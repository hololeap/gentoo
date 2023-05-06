# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for creating and modifying zip archives"
HOMEPAGE="https://github.com/jgm/zip-archive"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="executable"

RDEPEND=">=dev-haskell/digest-0.0.0.1:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
	test? ( dev-haskell/hunit
		dev-haskell/temporary )
"
# non-haskell depend
DEPEND="${DEPEND}
	test? ( app-arch/zip )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
