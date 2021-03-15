[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
["Cap. Aaron L. Collins","Ya cargue los datos que encontre"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
HQ sideChat "Ahora mismo nos acabaron de llegar por lo pronto desplazate a las hangares y busca el UAV para ver que podemos tener";
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Cap. Aaron L. Collins","Copiado..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
