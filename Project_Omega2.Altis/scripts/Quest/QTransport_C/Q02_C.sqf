for "_i" from 10 to 0 step -1 do {
	sleep 2;
	hintSilent format ["Finalizing Quest, Time remain:%1",_i];
};
["TaskSucceeded"] call BIS_fnc_showNotification;
[player, 8000] call HALs_money_fnc_addFunds;
_rf02 = 10000;
hint format ["Recibistes: $%1",_rf02];
deleteMarker "Mkr2";
deleteMarker "QMarker02a";
clearWeaponCargo truck02;
deleteVehicle truck02;