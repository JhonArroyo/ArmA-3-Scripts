[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
["Voz Descoocida","Veo que todavia quieres seguir arriesgandote"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Si no quisiera no estuviera aca no ?..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Voz Descoocida","Ya estoy viendo.... como veo que estas interesado en transportar ya estoy enviando la ubicacion del punto de entrega...."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Vale..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
["TaskAssigned02"] call BIS_fnc_showNotification;
[["Quest02Recomendation", "CancelQuest02"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint;

_Marker2_Pos = createMarker ["QMarker02a", position ref02]; _Marker2_Pos setMarkerShape "ICON";  
_Marker2_Pos setMarkerType "mil_marker";  
_Marker2_Pos setMarkerColor "ColorUNKNOWN";  
_Marker2_Pos setMarkerText "Objetivo: LLeva el cargamento al mundo designado en el mapa";  
_Marker2_Pos setMarkerSize [1,1];  
{
	truck02 addWeaponCargo [_x,10];
} forEach [
	"launch_NLAW_F",
	"launch_RPG32_F",
	"launch_RPG32_ghex_F",
	"launch_RPG7_F",
	"launch_RPG7_F",	
	"launch_Titan_F",
	"launch_I_Titan_F",
	"launch_O_Titan_ghex_F",
	"launch_O_Titan_F",
	"launch_B_Titan_F",
	"launch_B_Titan_tna_F",
	"launch_Titan_short_F",
	"launch_O_Titan_short_F",
	"launch_O_Titan_short_ghex_F",
	"launch_I_Titan_short_F",
	"launch_B_Titan_short_F",
	"launch_B_Titan_short_tna_F"
	];
player addEventHandler ["Take", {
	_unit = _this select 0;
	_item = _this select 2;
	if(
		_item == "launch_NLAW_F" ||
		_item == "launch_RPG32_F" ||
		_item == "launch_RPG32_ghex_F" ||
		_item == "launch_RPG7_F" ||
		_item == "launch_RPG7_F" ||
		_item == "launch_Titan_F" ||
		_item == "launch_I_Titan_F" ||
		_item == "launch_O_Titan_ghex_F" ||
		_item == "launch_O_Titan_F" ||
		_item == "launch_B_Titan_F" ||
		_item == "launch_B_Titan_tna_F" ||
		_item == "launch_Titan_short_F" ||
		_item == "launch_O_Titan_short_F" ||
		_item == "launch_O_Titan_short_ghex_F" ||
		_item == "launch_I_Titan_short_F" ||
		_item == "launch_B_Titan_short_F" ||
		_item == "launch_B_Titan_short_tna_F" ) then {
		//_unit removeItem "srifle_EBR_F";
		_unit removeWeapon _item;
		//_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled02"] call BIS_fnc_showNotification;
	};
}];
