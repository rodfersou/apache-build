#!/bin/sh

set -e

if [ -z "${PREFIX}" ]; then
  PREFIX="/usr/local"
fi

BIN_PATH="${PREFIX}/bin"
SHARE_PATH="${PREFIX}/share/apache-build"

mkdir -p "${BIN_PATH}"
mkdir -p "${SHARE_PATH}"

for file in bin/*; do
  cp "${file}" "${BIN_PATH}"
done

for file in share/apache-build/*; do
  cp "${file}" "${SHARE_PATH}"
done

echo "Installed apache-build at ${PREFIX}"
