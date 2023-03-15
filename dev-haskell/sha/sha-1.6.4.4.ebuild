# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6
#hackport: flags: +decoderinterface

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="SHA"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Implementations of the SHA suite of message digest functions"
HOMEPAGE="https://hackage.haskell.org/package/SHA"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86 ~amd64-linux"
IUSE="exe"

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-10000
		>=dev-haskell/test-framework-quickcheck2-0.3.0.2 <dev-haskell/test-framework-quickcheck2-10000 )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=decoderinterface \
		$(cabal_flag exe exe)
}
