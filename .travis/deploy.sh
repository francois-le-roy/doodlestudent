set -e
- sudo openfortivpn istic-vpn.univ-rennes1.fr:443 -u fleroy -p "${VPN_PASS}" --trusted-cert bf01c9bcba70b3be1f8ae8f941afbc7dcf1d8c81afe7e3d10f48e460c44446c6 --no-routes --no-dns --pppd-no-peerdns &
git config --global push.default simple
git remote add production ssh://zprojet@148.60.11.226/home/doodlestudent
git push production master
