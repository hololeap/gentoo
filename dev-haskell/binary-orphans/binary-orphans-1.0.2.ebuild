# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Tests fail to build

DESCRIPTION="Compatibility package for binary; provides instances"
HOMEPAGE="https://hackage.haskell.org/package/binary-orphans"
HACKAGE_REV="1"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-haskell/onetuple-0.3:=[profile?] <dev-haskell/onetuple-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
#	test? ( >=dev-haskell/quickcheck-2.13.1 <dev-haskell/quickcheck-2.15
#		>=dev-haskell/quickcheck-instances-0.3.21 <dev-haskell/quickcheck-instances-0.4
#		>=dev-haskell/tagged-0.8.6 <dev-haskell/tagged-0.8.7
#		>=dev-haskell/tasty-0.10.1.2 <dev-haskell/tasty-1.5
#		>=dev-haskell/tasty-quickcheck-0.8.3.2 <dev-haskell/tasty-quickcheck-0.11 )
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
