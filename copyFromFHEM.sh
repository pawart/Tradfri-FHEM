#!/bin/sh
cd ./src

./copyAndIncrVersion.pl /opt/fhem/FHEM/31_TradfriGroup.pm ./FHEM/31_TradfriGroup.pm
./copyAndIncrVersion.pl /opt/fhem/FHEM/31_TradfriDevice.pm ./FHEM/31_TradfriDevice.pm
./copyAndIncrVersion.pl /opt/fhem/FHEM/30_TradfriGateway.pm ./FHEM/30_TradfriGateway.pm
./copyAndIncrVersion.pl /opt/fhem/FHEM/TradfriUtils.pm ./FHEM/TradfriUtils.pm

ls -al ./FHEM
perl ./build-controls-file.pl

echo "Done."
