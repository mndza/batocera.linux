# RG552 sandbox

This repo contains a modified Batocera Linux for using the Anbernic RG552 (Rockchip RK3399) as a development platform. Most emulators and games are removed.

## Building
You need to have a working `docker` installation in your system:
```
git clone https://github.com/mndza/batocera.linux.git
git submodule update --init
make batocera-docker-image
make rk3399-build
```
Output images will be located in `output/rk3399/images/batocera/images/rg552`.

Write the image to a SD card with:
```
gunzip -c <imagename>.img.gz | sudo dd of=/dev/sdX bs=4M status=progress
```

## Notes
Controls for waterfall demos:
- `Start+Select`: exit
- `D-pad Up`: Increase power offset
- `D-pad Down`: Decrease power offset
- `D-pad Right`: Increase power scale
- `D-pad Left`: Decrease power scale
