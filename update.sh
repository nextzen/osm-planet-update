#!/bin/bash -ex

wget -r http://planet.us-east-1.mapzen.com/planet-latest.osm.pbf

osmupdate --day --hour planet-latest.osm.pbf
