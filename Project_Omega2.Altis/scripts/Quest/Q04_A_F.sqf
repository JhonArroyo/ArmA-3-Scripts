truck04 = "B_Truck_01_box_F" createVehicle position target04;
_marker4 = createMarker ["Mkr2", position target04]; 
_marker4 setMarkerType "mil_circle"; 
_marker4 setMarkerColor "ColorUNKNOWN"; 
_marker4 setMarkerText "Transport IV";  
_marker4 setMarkerSize [1,1];

[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
IHQ sideChat "     ";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","  "] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
IHQ sideChat "  ";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","  "] spawn BIS_fnc_showSubtitle;
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
} forEach ["srifle_EBR_F","srifle_LRR_F","arifle_Mk20_F","SMG_01_Holo_F"];
player addEventHandler ["Take", {
   _unit = _this select 0;
   _item = _this select 2;
   if(_item == "srifle_EBR_F" || _item == "srifle_LRR_F" || _item == "arifle_Mk20_F" || _item == "SMG_01_Holo_F") then {
       //_unit removeItem "srifle_EBR_F";
	   _unit removeWeapon _item;
	   //_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled04"] call BIS_fnc_showNotification;
	};
}];