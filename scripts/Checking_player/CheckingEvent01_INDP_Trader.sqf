/*
	Author = JhonArroyo (WHITELOTUS)
	DATE CREATION: 2021-03-05
	TIME CREATION: 18:22:20

*/

publicVariable "gate2Veh";
_check  = [player] call HALs_money_fnc_getFunds;
if (_check >= 11001) then {
	gate2Veh = nearestBuilding someObject;
	hint "Espere porfavor....";
	sleep 5;
	hint "ABRIENDO COMPUERTAS ESPERE....";
	sleep 6;
	hint "COMPUERTAS ABIERTAS....";
	hint "BIENVENIDO...";
	gate2Veh animate ["Door_1a_move", 1];
	gate2Veh animate ["Door_1b_move", 1];
	hintSilent "";
}else{
	_fundleft = 11001 - _check;
	hint format ["Usted no reune del minimo de dinero para entrar, le hacen falta $%1",_fundleft]
};
