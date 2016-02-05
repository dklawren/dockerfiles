FROM fedora
MAINTAINER dkl@mozilla.com
RUN useradd -m -G wheel -u 1000 -s /bin/bash firefox
RUN dnf -q -y update \
    && dnf install -q -y libXt dbus-glib tar bzip2 libcanberra-gtk2 PackageKit-gtk3-module libexif \
    && dnf -q clean all
RUN curl -sSL "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-46.0a1.en-US.linux-x86_64.tar.bz2" -o /tmp/firefox.tar.bz2 \
	&& mkdir -p /opt/firefox \
	&& tar -xjf /tmp/firefox.tar.bz2 -C /opt/firefox --strip-components 1 \
	&& rm /tmp/firefox.tar.bz2* \
	&& ln -s /opt/firefox/firefox /usr/bin/firefox
COPY local.conf /etc/fonts/local.conf
COPY ./init.sh /
RUN chmod a+x init.sh
CMD ["/init.sh"]
