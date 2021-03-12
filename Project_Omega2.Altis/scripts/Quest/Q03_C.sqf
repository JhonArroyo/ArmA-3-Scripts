for "_i" from 10 to 0 step -1 do {
	sleep 2;
	hintSilent format ["Finalizing Quest, Time remain:%1",_i];
};
["TaskSucceeded"] call BIS_fnc_showNotification;
[player, 10000] call HALs_money_fnc_addFunds;
_rf03 = 10000;
hint format ["Recibistes: $%1",_rf03];
deleteMarker "Mkr3";
deleteMarker "QMarker03a";
clearWeaponCargo truck03;
deleteVehicle truck03;