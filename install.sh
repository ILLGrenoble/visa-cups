#!/bin/bash

apt install cups curl

cp visa.ppd /usr/share/cups/model/visa.ppd

cp visa /usr/lib/cups/backend/visa
chmod +x  /usr/lib/cups/backend/visa

