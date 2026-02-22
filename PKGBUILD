# Maintainer: MS-DOS Manfred
pkgname=pcbox-roms-git
pkgver=ad149bfe0e9421e3cd23b43b291ee01f9de41a01
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
