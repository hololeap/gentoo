# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="IfElse"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Anaphoric and miscellaneous useful control-flow"
HOMEPAGE="https://hackage.haskell.org/package/IfElse"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86 ~amd64-linux"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

S="${WORKDIR}/${MY_P}"
