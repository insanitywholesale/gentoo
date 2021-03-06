# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit font

DESCRIPTION="Bhutanese/Tibetan fonts for dzongkha script provided by the Bhutanese government"
HOMEPAGE="http://www.dit.gov.bt/downloads"
SRC_URI="http://www.dit.gov.bt/sites/default/files/dzongkhafonts.zip -> ${P}.zip"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="amd64 arm ~arm64 x86"
IUSE=""
RESTRICT="mirror bindist"

DEPEND="app-arch/unzip"

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf"

src_unpack() {
	default
	unpack ./*.zip
}
