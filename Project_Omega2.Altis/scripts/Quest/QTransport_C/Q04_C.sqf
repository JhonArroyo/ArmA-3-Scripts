for "_i" from 10 to 0 step -1 do {
	sleep 2;
	hintSilent format ["Finalizing Quest, Time remain:%1",_i];
};
["TaskSucceeded"] call BIS_fnc_showNotification;
[player, 10000] call HALs_money_fnc_addFunds;
_rf04 = 250000;
hint format ["Recibistes: $%1",_rf04];
deleteMarker "Mkr4";
deleteMarker "QMarker04a";
clearWeaponCargo truck04;
deleteVehicle truck04;
systemChat "QUEST-04  F I N A L I Z I N G";