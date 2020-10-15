# Building Debian packages

## Notes

```sh
sudo apt install dh-make
sudo apt install equivs
```

### Creating the r-mhplot pkg

Possibly `sudo apt install r-cran-generics r-cran-rcpp`. 

```sh
pkgname=r-mhplot
pkgname_ver=${pkgname}-0.6
fn_ver=${pkgname}_0.6
SRC=~/src/github_jm/mhplot/
DEST=~/tmp/mhplot/${pkgname_ver}
FILES="./*"

mkdir -p ${DEST}
cd ${DEST}
rm -rf ${DEST}/*
cd ${SRC}
cp -Rf ${FILES} ${DEST}/
cd ${DEST}
ls -a
cd ${DEST}/..
tar -zcvf ${fn_ver}.orig.tar.gz ${pkgname_ver}
cd ${DEST}
debuild -us -uc 
```

Check:

```sh
cd ${DEST}/..
dpkg -c r-mhplot_0.6-1_amd64.deb 
sudo dpkg -i r-mhplot_0.6-1_amd64.deb 
```
