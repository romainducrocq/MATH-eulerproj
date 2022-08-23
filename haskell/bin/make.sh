#!/bin/bash

cd ..

cabal update
cabal v2-build
cabal v2-run exe:Euler
