#!/bin/bash -ex

cd /data

rm planet-latest.osm.pbf
wget http://planet.us-east-1.mapzen.com/planet-latest.osm.pbf

osmupdate --day --hour planet-latest.osm.pbf planet-latest-updated.osm.pbf
