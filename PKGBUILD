# Maintainer: MS-DOS Manfred
pkgname=pcbox-roms-git
pkgver=3f1ae1f9c7e803792fc25ba570a835f50389e1ce
pkgrel=1
pkgdesc='ROMs for the PCBox emulator'
arch=('any')
url='https://github.com/PCBox/roms'
license=('custom')
makedepends=('git')
options=('!strip')
provides=('pcbox-roms')
conflicts=('86box-roms')
source=("${pkgname}::git+https://github.com/PCBox/roms.git")
sha512sums=('SKIP')

pkgver() {
  cd ${pkgname}
  git describe --long --tags | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g'
}

package() {
  cd "${srcdir}/${pkgname}"
  install -d "$pkgdir/usr/share/PCBox/roms"
  cp -R [a-z]* "$pkgdir/usr/share/PCBox/roms"
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
