#! /bin/bash

shopt -s nullglob
for group in /sys/kernel/iommu_groups/*; do
    echo "IOMMU Group ${group##*/}:"
    for d in $group/devices/*; do
        echo -e "\t$(lspci -nns ${d##*/})"
    done;
done
