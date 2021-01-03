#!/usr/bin/env bash

Rscript -e 'library(plumber); pr <- plumber::plumb("plumber.R"); pr %>% pr_run(port=8080)'
