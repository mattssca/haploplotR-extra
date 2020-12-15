#!/bin/bash

read -p "Please state sex of input sample (m/f) " RESP
if [ "$RESP" = "m" ]; then
  sh ./scripts/xy/add/xy_haploplot_add.sh
else
  sh ./scripts/xx/add/xx_haploplot_add.sh
fi