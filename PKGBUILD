pkgname=tmparch
pkgver=2.1.3
pkgrel=1
pkgdesc="Part of the tmplinux suite. Temporary Arch Linux"
arch=('any')
url="https://github.com/TheOddCell/tmparch"
license=('MIT')
depends=('bash' 'arch-install-scripts' 'shadow' 'util-linux' 'systemd' 'squashfs-tools')
makedepends=()
source=('tmparch')
sha256sums=('SKIP')

package() {
    install -Dm755 tmparch "$pkgdir/usr/bin/tmparch"
}
