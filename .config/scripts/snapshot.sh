#!/bin/bash

lvcreate -L 500m -s /dev/mapper/main-root -n lv_root
lvcreate -L 100m -s /dev/mapper/main-home -n lv_home
