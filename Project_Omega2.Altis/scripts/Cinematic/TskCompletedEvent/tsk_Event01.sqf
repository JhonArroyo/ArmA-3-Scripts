_completed01 = "120" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed01 == true)
};
sleep 2;
[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
HQ sideChat "Como vamos..?";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Hasta el momento todo en orden, acabo de encontrar un laboratorio con informacion estoy en proceso de cargarlo"] spawn BIS_fnc_showSubtitle;
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
_completed02 = "150" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed02 == true)
};
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
_completed03 = "110" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed03 == true)
};
playSound "in1";
playSound "fuz0";
["Cap. Aaron L. Collins","Datos Obtenidos"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
HQ sideChat "Vale....por lo pronto intenta recorrer mas adelante te avisaremos de tu proximo encargo";
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Cap. Aaron L. Collins","Como digas. Cambio y fuera"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
