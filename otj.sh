#!/usr/bin/env bash

# Frequencies
G4=392
A4=440
B4=494
C5=523
D5=587

# Durations
QTR=500
HALF=$((QTR*2))
EIGHTH=$((QTR/2))

# Notes
for i in {0..1}; do
beep -f $B4 -l $QTR -r 2
beep -f $C5 -l $QTR
beep -f $D5 -l $QTR -r 2
beep -f $C5 -l $QTR
beep -f $B4 -l $QTR
beep -f $A4 -l $QTR
beep -f $G4 -l $QTR -r 2
beep -f $A4 -l $QTR
beep -f $B4 -l $QTR
if [[ "$i" == '0' ]] ; then
beep -f $B4 -l $HALF
beep -f $A4 -l $EIGHTH
beep -f $A4 -l 750
else
beep -f $A4 -l $HALF
beep -f $G4 -l $EIGHTH
beep -f $G4 -l 750
fi
done
