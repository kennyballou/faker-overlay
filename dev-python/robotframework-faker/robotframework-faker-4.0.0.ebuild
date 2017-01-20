# Copyright 2017 Kenny Ballou
# Distributed under the terms of the GNU General Public License v3
# $Id$

EAPI=6
PYTHON_COMPAT=(python2_7)

inherit distutils-r1

MY_P=${PN}_${PV}

DESCRIPTION="Robot Framework Keyword Library for Faker"
HOMEPAGE="https://github.com/guykisel/robotframework-faker"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/Faker[${PYTHON_USEDEP}]
		 dev-python/robotframework[${PYTHON_USEDEP}]
		 dev-python/wrapt[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	pushd "${S}"
	mv tests robotframework-faker/.
	popd
	distutils-r1_python_prepare_all
}
