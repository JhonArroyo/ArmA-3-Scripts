[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
HQ sideChat "Como vamos..?";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Hasta el momento todo en orden, acabo de encontrar un laboratorio con informacion estoy en proceso de descarga"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
HQ sideChat "Enterado...";
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;


