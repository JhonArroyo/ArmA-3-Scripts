/*
	Author = JhonArroyo (WHITELOTUS)
	DATE CREATION: 2021-03-05
	TIME CREATION: 18:22:20

*/

publicVariable "gate2Veh";
_checkVeh  = [player] call HALs_money_fnc_getFunds;
if (_checkVeh >= 11001) then {
	gate2Veh = nearestBuilding someObject;
	hint "Espere porfavor....";
	sleep 5;
	hint "SUBIENDO COMPUERTAS ESPERE....";
	sleep 6;
	hint "COMPUERTAS ABIERTAS....";
	HINT "BIENVENIDO";
	gate2Veh animate ["Door_2_rot", 1];
	gate2Veh animate ["Door_2_rot", 1];
	hintSilent "";
}else{
	_fundleftVeh = 11001 - _checkVeh;
	hint format ["Usted no reune del minimo de dinero para entrar, le hacen falta $%1",_fundleftVeh]
};
