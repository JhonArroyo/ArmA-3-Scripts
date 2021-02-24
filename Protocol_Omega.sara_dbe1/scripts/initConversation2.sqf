systemChat "I N I C I A N D O  S E Q U E N C E ";  // DEBUG
systemChat "I N I C I A N D O  E N  5 S E G";     // DEBUG
sleep 5;

[0, 6, false, true ] call BIS_fnc_cinemaBorder;
sleep 6;
playSound "in1";
playSound "fuz0";
["Maj.Aaron Warren","Acabo de llegar al punto designado"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
HQ sideChat "Entendido...espero que tenga en cuenta su lista de objetivos desde ahora.";
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Maj.Aaron Warren","Tratare siempre al final de cada objetivo designado informar mi estado."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
HQ sideChat "Esperemos que todo salga segun lo planeado...";
sleep 5;

playSound "fuz0";
HQ sideChat "Ademas me gustaria advertirle que se prepare ante cualquier tipo de situacion";
sleep 5;

playSound "fuz0";
HQ sideChat "Si se ve comprometido no dude utilizar la fruerza o tambien evitar.";
sleep 5;

playSound "fuz0";
HQ sideChat "Nos vale mas vivo que muerto...";
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Maj.Aaron Warren","Eso lo tengo claro y demostrare que eligieron a la persona idonea"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Maj.Aaron Warren","Cambio y Fuera...."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

systemChat "S E Q U E N C E  F I N A L I Z A D A"; // DEBUG
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
