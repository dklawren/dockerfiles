FROM fedora
RUN useradd -m -G wheel -u 1000 -s /bin/bash chrome
COPY google-chrome.repo /etc/yum.repos.d/
RUN dnf -q -y update \
    && dnf install -q -y google-chrome libcanberra-gtk2 PackageKit-gtk3-module libexif \
    && dnf -q clean all
COPY local.conf /etc/fonts/local.conf
COPY ./init.sh /
RUN chmod a+x init.sh
CMD ["/init.sh"]
