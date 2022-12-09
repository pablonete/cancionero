setTempo(120);

// Fills
var fillA = "0---0-0-00--0000";
var fillB = "0--0--0--0--0-0-";
for(var i = 1; i < 9; i++) {
  makeBeat(OS_SNARE03, 1, i, fillA);
}
for(var i = 3; i < 9; i++) {
  makeBeat(COMMON_LOVE_DRUMBEAT_1, 2, i, fillB);
}

// Effects fade in
setEffect(3, VOLUME,GAIN, -20, 1, 6, 5);
