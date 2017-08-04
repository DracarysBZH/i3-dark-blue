#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    if [[ "$pac" > "100" ]]
    then
        PAC='%{F#AFF9F5}'
    else
        PAC='%{F#ffffff}'
    fi
    if [[ "$aur" > "10" ]]
    then
        AUR='%{F#AFF9F5}'
    else
        AUR='%{F#ffffff}'
    fi
    echo "${PAC} $pac %{F+} %{F#ffffff}%{F+} ${AUR} $aur"
fi
