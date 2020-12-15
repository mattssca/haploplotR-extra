#!/bin/bash

read -p "Please state sex of input sample (m/f) " RESP
if [ "$RESP" = "m" ]; then
  sh ./scripts/xy/xy_haploplot.sh
else
  sh ./scripts/xx/xx_haploplot.sh
fi