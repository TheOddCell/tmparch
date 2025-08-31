pkgname=tmparch
pkgver=2.1.0
pkgrel=1
pkgdesc="Temporary Arch Linux"
arch=('any')
url="https://github.com/TheOddCell/tmparch"
license=('MIT')
depends=('bash' 'arch-install-scripts' 'shadow' 'util-linux' 'systemd')
makedepends=()
source=('tmparch')
sha256sums=('SKIP')

package() {
    install -Dm755 tmparch "$pkgdir/usr/bin/tmparch"
}
