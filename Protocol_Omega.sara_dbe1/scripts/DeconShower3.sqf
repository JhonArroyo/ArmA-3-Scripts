if (vehicle player != player) then 
{
hintSilent "";
[cshower3, 5.4, 4,2, true] spawn BIN_fnc_deconShowerAnimLarge;
[
	[
		["DESCONTAMINANDO,", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>"],
		["POR FAVOR ESPERE...", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>"]
		//["", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 20]
	]
] spawn BIS_fnc_typeText;
//["DESCONTAMINANDO","ESPERE"] spawn BIS_fnc_infoText;
vehicle player enableSimulation false;
sleep 20;

[
	[
		["DESCONTAMINADO", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
//["DESCONTAMINADO","TENGA CUIDADO"] spawn BIS_fnc_infoText;
//player groupChat "Cada vez que salga o entre de la ciudad zero porfavor siga los mismos procedimientos";
driver vehicle player globalChat "Cada vez que salga o entre de la ciudad zero porfavor siga los mismos procedimientos";
vehicle player enableSimulation true;
[cshower3] call BIN_fnc_deconShowerAnimStop;
sleep 3;

}
else{hint "ESTE DESCONTAMINADOR ES SOLO PARA VEHICULOS"};