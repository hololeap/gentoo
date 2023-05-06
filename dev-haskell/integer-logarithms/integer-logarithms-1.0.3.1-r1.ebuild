# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -check-bounds

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Integer logarithms"
HOMEPAGE="https://github.com/haskellari/integer-logarithms"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

#circular dependency: scientific -> integer-logarithms -> tasty -> scientific
RESTRICT=test

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
# 	test? ( >=dev-haskell/quickcheck-2.14.1 <dev-haskell/quickcheck-2.15
# 		>=dev-haskell/smallcheck-1.2 <dev-haskell/smallcheck-1.3
# 		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.4
# 		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
# 		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11
# 		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9 )
# "

src_prepare() {
	default

	cabal_chdeps \
		'ghc-bignum  >=1.0  && <1.1' 'ghc-bignum  >=1.0'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-check-bounds
}
