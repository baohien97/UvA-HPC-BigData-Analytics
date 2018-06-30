#!/bin/bash

# Download data
if [ ! -d $HOME/material/bigdata-analytics/data ]; then
  TARBALL=uvahpc-bigdata-analytics.tar.bz2
  cd $HOME/material/bigdata-analytics/
  echo "Downloading data..."
  wget -O ${TARBALL} -q https://surfdrive.surf.nl/files/index.php/s/NYGZCD6CMURMpb0/download
  echo "Extracting data..."
  tar xf ${TARBALL}
  rm ${TARBALL}
  gunzip data/tweets.json.gz
  echo "Done."
fi
