#!/bin/bash

read -p "Superimpose ideograms with additional bedtracks? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  sh ./scripts/haploplot_run_add.sh
else
  sh ./scripts/haploplot_run.sh
fi