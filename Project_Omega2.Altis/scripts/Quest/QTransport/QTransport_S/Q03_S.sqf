["TaskAssigned03"] call BIS_fnc_showNotification;
[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
["Voz Desconocida","Fuahh..amigo no puedo creer lo loco que estas, y lo predispuesto a seguir transportando"] spawn BIS_fnc_showSubtitle;;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Loco o no lo que busco es la paga nada mas"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Voz Descoocida","mmm...bueno si todavia sigues interesado te adelanto que el siguiente pedido va hacer muy largo por lo tanto te puedes quedar si combustible"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Pues no pasa nada igual lo voy a entregar"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Voz Desconocida","Reafirmo estas demente pero igual me agrada.*risas*"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
[["Quest03Recomendation", "CancelQuest03"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint;

_Marker3_Pos = createMarker ["QMarker03a", position ref03]; _Marker3_Pos setMarkerShape "ICON";  
_Marker3_Pos setMarkerType "mil_marker";  
_Marker3_Pos setMarkerColor "ColorUNKNOWN";  
_Marker3_Pos setMarkerText "Objetivo: LLeva el cargamento al mundo designado en el mapa";  
_Marker3_Pos setMarkerSize [1,1];  
{
	tuck03 addWeaponCargo [_x,10];
} forEach [
	"arifle_MXM_Black_F",
	"arifle_MXM_F",
	"srifle_DMR_01_F",
	"srifle_DMR_02_camo_F",
	"srifle_DMR_02_F",
	"srifle_DMR_02_sniper_F",
	"srifle_DMR_03_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_03_multicam_F",
	"srifle_DMR_03_tan_F",
	"srifle_DMR_03_woodland_F",
	"srifle_DMR_04_F",
	"srifle_DMR_04_Tan_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_05_hex_F",
	"srifle_DMR_05_tan_f",
	"srifle_DMR_06_camo_F",
	"srifle_DMR_06_olive_F",
	"srifle_EBR_F",
	"srifle_GM6_camo_F",
	"srifle_GM6_F",
	"srifle_LRR_camo_F",
	"srifle_LRR_F"
	];
player addEventHandler ["Take", {
	_unit = _this select 0;
	_item = _this select 2;
	if(
		_item == "arifle_MXM_Black_F" ||
		_item == "arifle_MXM_F" ||
		_item == "srifle_DMR_01_F" ||
		_item == "srifle_DMR_02_camo_F" ||
		_item == "srifle_DMR_02_F" ||
		_item == "srifle_DMR_02_sniper_F" ||
		_item == "srifle_DMR_03_F" ||
		_item == "srifle_DMR_03_khaki_F" ||
		_item == "srifle_DMR_03_multicam_F" ||
		_item == "srifle_DMR_03_tan_F" ||
		_item == "srifle_DMR_03_woodland_F" ||
		_item == "srifle_DMR_04_F" ||
		_item == "srifle_DMR_04_Tan_F" ||
		_item == "srifle_DMR_05_blk_F" ||
		_item == "srifle_DMR_05_hex_F" ||
		_item == "srifle_DMR_05_tan_f" ||
		_item == "srifle_DMR_06_camo_F" ||
		_item == "srifle_DMR_06_olive_F" ||
		_item == "srifle_EBR_F" ||
		_item == "srifle_GM6_camo_F" ||
		_item == "srifle_GM6_F" ||
		_item == "srifle_LRR_camo_F" ||
		_item == "srifle_LRR_F"	) then {
		//_unit removeItem "srifle_EBR_F";
		_unit removeWeapon _item;
		//_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled02"] call BIS_fnc_showNotification;
	};
}];
