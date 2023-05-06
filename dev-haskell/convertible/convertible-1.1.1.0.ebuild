# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: -buildtests

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Typeclasses and instances for converting between types"
HOMEPAGE="https://hackage.haskell.org/package/convertible"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests
}
