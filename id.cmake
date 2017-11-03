set(package LibVNCServer)
set(version 0.9.11-unowhy-1)

byd__package__info(${package}
    MAINTAINER_NAME "David Callu"
    MAINTAINER_EMAIL "callu.david@gmail.com"
    VERSION ${version}-1
    ABI ${version}
    )

byd__package__download_info(${package}
    URL "https://github.com/ledocc/libvncserver/archive/0.9.11-unowhy-1.tar.gz"
    URL_HASH SHA1=af9a54d6afeca71022b8ee97b50f28b9a69b6be4
)
