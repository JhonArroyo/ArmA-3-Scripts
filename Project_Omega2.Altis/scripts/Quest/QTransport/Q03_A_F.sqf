truck03 = "B_Truck_01_box_F" createVehicle position target03;
_marker3 = createMarker ["Mkr2", position target03]; 
_marker3 setMarkerType "mil_circle"; 
_marker3 setMarkerColor "ColorBlack"; 
_marker3 setMarkerText "Transport III";  
_marker3 setMarkerSize [1,1];

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
} forEach ["srifle_EBR_F","srifle_LRR_F","arifle_Mk20_F","SMG_01_Holo_F"];
player addEventHandler ["Take", {
   _unit = _this select 0;
   _item = _this select 2;
   if(_item == "srifle_EBR_F" || _item == "srifle_LRR_F" || _item == "arifle_Mk20_F" || _item == "SMG_01_Holo_F") then {
       //_unit removeItem "srifle_EBR_F";
	   _unit removeWeapon _item;
	   //_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled02"] call BIS_fnc_showNotification;
	};
}];
