# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999
#hackport: flags: +base4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer"
HOMEPAGE="https://github.com/haskell-suite/haskell-src-exts"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/happy
	test? ( >=dev-haskell/pretty-show-1.6.16
		>=dev-haskell/smallcheck-1.0
		>=dev-haskell/tasty-0.3
		>=dev-haskell/tasty-golden-2.2.2
		dev-haskell/tasty-smallcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=base4
}
