FROM fedora
RUN useradd me
RUN dnf -q -y update \
    && dnf install -q -y eclipse-pde libcanberra-gtk3 PackageKit-gtk3-module \
    && dnf -q clean all
COPY ./init.sh /
RUN chmod a+x init.sh
CMD ["/init.sh"]
