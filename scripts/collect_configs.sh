#!/bin/bash -e

cd $(dirname $0)

dest_root_dir=./configs
paths=(

)


mkdir -p ${dest_root_dir}
for path in ${paths[@]};
do
    dest_path=${dest_root_dir}/${path}
    mkdir -p $(dirname ${dest_path})
    cp -upv ${path} ${dest_path}
done
