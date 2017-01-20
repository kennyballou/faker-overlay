# Copyright 2017 Kenny Ballou
# Distributed under the terms of the GNU General Public License v3
# $Id$

EAPI=6
PYTHON_COMPAT=(python{2_7,3_4,3_5})

inherit distutils-r1

MY_P=${PN}_${PV}

DESCRIPTION="Python package for random data generation"
HOMEPAGE="http://faker.readthedocs.io/en/master/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/six[${PYTHON_USEDEP}]
		 dev-python/python-dateutil[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"
