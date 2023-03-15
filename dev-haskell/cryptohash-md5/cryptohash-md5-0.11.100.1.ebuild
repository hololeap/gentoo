# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast, pure and practical MD5 implementation"
HOMEPAGE="https://github.com/hvr/cryptohash-md5"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/base16-bytestring-0.1.1 <dev-haskell/base16-bytestring-0.2
		>=dev-haskell/puremd5-2.1.3 <dev-haskell/puremd5-2.2
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 )
"

src_prepare() {
	cabal_chdeps \
		'base             >= 4.5   && < 4.10' 'base             >= 4.5' \
		'tasty             == 0.11.*' 'tasty             >= 0.11' \
		'tasty-quickcheck  == 0.8.*' 'tasty-quickcheck  >= 0.8' \
		'tasty-hunit       == 0.9.*' 'tasty-hunit       >= 0.9'
	default
}
