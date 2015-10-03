#!/usr/bin/env bash

set -u

LIST=(
    # paris
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1037/704.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1037/705.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1038/704.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1038/705.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1036/704.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1037/703.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1036/705.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1038/703.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/11/1036/703.vector.pbf"

    # paris2
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4150/2819.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4149/2819.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4150/2818.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4148/2819.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4149/2818.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4148/2818.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4150/2820.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4149/2820.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4149/2817.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/13/4148/2817.vector.pbf"

    # alps
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/34/23.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/34/22.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/33/23.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/33/22.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/34/21.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/32/23.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/32/22.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/33/21.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/32/21.vector.pbf"

    # us east
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/9/12.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/8/12.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/9/13.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/8/13.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/9/11.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/7/12.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/8/11.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/7/13.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/5/7/11.vector.pbf"

    # greater la
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/88/204.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/88/205.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/89/204.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/89/205.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/87/204.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/88/203.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/87/205.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/89/203.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/9/87/203.vector.pbf"

    # sf
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2621/6333.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2620/6333.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2621/6334.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2620/6334.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2621/6332.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2619/6333.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2620/6332.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2619/6334.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/14/2619/6332.vector.pbf"

    # oakland
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/657/1582.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/657/1583.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/658/1582.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/658/1583.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/656/1582.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/657/1581.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/656/1583.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/658/1581.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/12/656/1581.vector.pbf"

    # germany
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/34/20.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/33/20.vector.pbf"
    "mapbox.mapbox-terrain-v2,mapbox.mapbox-streets-v6/6/32/20.vector.pbf"
)

for OUTPUT in ${LIST[@]} ; do
    if [ ! -f "${OUTPUT}" ] ; then
        mkdir -p "`dirname "${OUTPUT}"`"
        echo "Downloading tile '${OUTPUT}'"
        curl -# "https://a.tiles.mapbox.com/v4/${OUTPUT}?access_token=${MAPBOX_ACCESS_TOKEN}" | gunzip > "${OUTPUT}"
    fi
done
