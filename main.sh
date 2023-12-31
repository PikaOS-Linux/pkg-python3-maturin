# Clone Upstream
git clone https://github.com/PyO3/maturin -b v1.3.0
cp -rvf ./debian ./maturin/
cd ./maturin

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
