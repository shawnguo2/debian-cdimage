#!/bin/bash

pushd debian/installer/arm64/images/cdrom/
mv initrd.gz initrd.gz.orig
cat ../../../../../misc/lenovo-flex-5g/initrd_acpi_tables initrd.gz.orig > initrd.gz
mv gtk/initrd.gz gtk/initrd.gz.orig
cat ../../../../../misc/lenovo-flex-5g/initrd_acpi_tables gtk/initrd.gz.orig > gtk/initrd.gz
popd
