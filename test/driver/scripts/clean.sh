#!/bin/sh

root_dir="$(cd $(dirname $0)/.. && pwd)"
apps_dir="${root_dir}/apps"

rm -rf ${root_dir}/_build

for app in $(/bin/ls ${apps_dir}); do
    cd ${apps_dir}/${app}
    rm -rf _build
    rm -rf _checkouts
done

echo "done"
