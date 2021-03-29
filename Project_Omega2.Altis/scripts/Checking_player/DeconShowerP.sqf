[cshower1, 1.5, 9] spawn BIN_fnc_deconShowerAnim;
[
	[
		["DESCONTAMINANDO,", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>"],
		["POR FAVOR ESPERE...", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>"]
		//["", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 20]
	]
] spawn BIS_fnc_typeText;
//["DESCONTAMINANDO","ESPERE"] spawn BIS_fnc_infoText;
player enableSimulation false;
sleep 10;

[
	[
		["DESCONTAMINADO", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
//["DESCONTAMINADO","TENGA CUIDADO"] spawn BIS_fnc_infoText;
player globalChat "Cada vez que salga o entre de la ciudad zero porfavor siga los mismos procedimientos";
player enableSimulation true;
[cshower1] call BIN_fnc_deconShowerAnimStop;
sleep 3;
