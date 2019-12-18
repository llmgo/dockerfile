#!/bin/bash
# script for zbox
set -e
tar xf /tmp/ZenTaoPMS.11.6.1.zbox_64.tar.gz -C /opt/
rm -rf /tmp/ZenTaoPMS.11.6.1.zbox_64.tar.gz
if [ -e "/opt/zbox/zbox" ];then
    /opt/zbox/zbox start && tail -f /opt/zbox/logs/*
fi
