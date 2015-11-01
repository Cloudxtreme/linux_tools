#!/usr/bin/env bash

process_path=/usr/lib/openssh
process=sftp-server
maxprocessnum=2

if [ $(pgrep $process | wc -l) -lt $maxprocessnum ]; then
        $process_path"/"$process $@
else
        return False
fi
