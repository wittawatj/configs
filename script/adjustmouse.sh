#/bin/bash

T=$(xinput | grep songliu | cut -f 2)
ID=${T:3}

T2=$(xinput list-props 17 | grep "Device Accel Constant" | cut -f 2 | cut -f 5 -d  ' ' )
Prop=${T2:1:3}

xinput set-prop $ID $Prop 3.5
