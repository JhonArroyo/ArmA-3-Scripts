/*
	Author = JhonArroyo (WHITELOTUS)
	DATE CREATION: 2021-03-05
	TIME CREATION: 18:22:20

*/

publicVariable "gate2Veh";
publicVariable "gater2Player";
//_check  = [player] call HALs_money_fnc_getFunds;
if (vehicle player != player) then {
	gate2Veh = nearestBuilding someObject;
	hint "Espere porfavor....";
	sleep 5;
	hint "ABRIENDO COMPUERTAS ESPERE....";
	sleep 6;
	hint "COMPUERTAS ABIERTAS....";
	gate2Veh animate ["Door_5_rot", 1];
	gate2Veh animate ["Door_6_rot", 1];
	hintSilent "";
}else{
	gate2Player = nearestBuilding someObject;
	hint "Espere porfavor....";
	sleep 5;
	gate2Player animate ["Door_1_rot", 1];
	gate2Player animate ["Door_2_rot", 1];
	hintSilent "";
};
