#!/bin/sh
sed '/\/\* CONFIG GOES HERE/,$d' android-config.h > android-config.h.new
cat <<EOF >> android-config.h.new
#define QCOM_BSP 1
#define QTI_BSP 1
EOF
sed '0,/\/\* CONFIG GOES HERE/d' android-config.h >> android-config.h.new
mv android-config.h.new android-config.h
