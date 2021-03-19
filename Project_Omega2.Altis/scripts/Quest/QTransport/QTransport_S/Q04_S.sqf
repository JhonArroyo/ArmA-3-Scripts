["TaskAssigned04"] call BIS_fnc_showNotification;
[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
["Voz Desconocida","Ehh...amigo como la llevas?, para que sepas que ya te envie la ubiciacion"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","A todo esto no me se tu nombre...."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Voz Desconocida","Ni yo el tuyo..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Voz Desconocida","Bueno mi nombre es Alberth"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Cap. Aaron L. Collins","El mio es Francis, Mucho gusto..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Alberth","Bueno Francis espero que logres la hasaña..."] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
[["Quest04Recomendation", "CancelQuest04"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint;

_Marker4_Pos = createMarker ["QMarker04a", position ref04]; _Marker4_Pos setMarkerShape "ICON";  
_Marker4_Pos setMarkerType "mil_marker";  
_Marker4_Pos setMarkerColor "ColorUNKNOWN";  
_Marker4_Pos setMarkerText "Objetivo: LLeva el cargamento al mundo designado en el mapa";  
_Marker4_Pos setMarkerSize [1,1];  
{
	tuck04 addWeaponCargo [_x,10];
} forEach [
	"arifle_AK12_F",
	"arifle_AK12_GL_F",
	"arifle_AKM_F",
	"arifle_AKM_FL_F",
	"arifle_AKS_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_F",
	"arifle_Katiba_GL_F",
	"arifle_Mk20_F",
	"arifle_Mk20_GL_F",
	"arifle_Mk20_GL_plain_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20C_F",
	"arifle_Mk20C_plain_F",
	"arifle_MX_Black_F",
	"arifle_MX_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_GL_F",
	"arifle_MXC_Black_F",
	"arifle_MXC_F",
	"arifle_SDAR_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_TRG21_GL_F",
	"hgun_ACPC2_F",
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_Pistol_heavy_02_F",
	"hgun_Pistol_Signal_F",
	"hgun_Rook40_F"
	];
player addEventHandler ["Take", {
	_unit = _this select 0;
	_item = _this select 2;
	if(
		_item == "arifle_AK12_F" ||
		_item == "arifle_AK12_GL_F" ||
		_item == "arifle_AKM_F" ||
		_item == "arifle_AKM_FL_F" ||
		_item == "arifle_AKS_F" ||
		_item == "arifle_Katiba_C_F" ||
		_item == "arifle_Katiba_F" ||
		_item == "arifle_Katiba_GL_F" ||
		_item == "arifle_Mk20_F" ||
		_item == "arifle_Mk20_GL_F" ||
		_item == "arifle_Mk20_GL_plain_F" ||
		_item == "arifle_Mk20_plain_F" ||
		_item == "arifle_Mk20C_F" ||
		_item == "arifle_Mk20C_plain_F" ||
		_item == "arifle_MX_Black_F" ||
		_item == "arifle_MX_F" ||
		_item == "arifle_MX_GL_Black_F" ||
		_item == "arifle_MX_GL_F" ||
		_item == "arifle_MXC_Black_F" ||
		_item == "arifle_MXC_F" ||
		_item == "arifle_SDAR_F" ||
		_item == "arifle_TRG20_F" ||
		_item == "arifle_TRG21_F" ||
		_item == "arifle_TRG21_GL_F" ||
		_item == "hgun_ACPC2_F" ||
		_item == "hgun_P07_F" ||
		_item == "hgun_Pistol_heavy_01_F" ||
		_item == "hgun_Pistol_heavy_02_F" ||
		_item == "hgun_Pistol_Signal_F" ||
		_item == "hgun_Rook40_F" ) then {
		//_unit removeItem "srifle_EBR_F";
		_unit removeWeapon _item;
		//_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled04"] call BIS_fnc_showNotification;
	};
}];
