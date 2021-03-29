/**

			E V A N'S   M E C H A N I C
				Author = JhonArroyo (WHITELOTUS)
				DATE CREATION: 2021-03-28
				TIME CREATION: 19:09:00

 */
private ["_veh","_vehType"];
_veh = _this select 0;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");
playSound "in1";
systemChat "B I E N V E N I D O";
systemChat "P O R F A V O R   E S P E R E..";
playSound "in2";
systemChat "C O M P R O B A N D O   F O N D O S";
sleep 4;
_mntCheck = [player] call HALs_money_fnc_getFunds;

if (_mntCheck < 2000) then {
	if (fuel vehicle player < 1 || damage vehicle player < 1) then {
		if ((_veh isKindOf "landvehicle") && (driver _veh == player)) exitWith { 
			_veh setDamage 0;	
			_veh sidechat format ["%1 Repaired.", _vehType];	
			sleep 3;
			_veh setFuel 1;
			_veh sidechat format ["%1 Refueled.", _vehType];
			sleep 2;
		};
	};
}else{	
	systemChat "Si no dispones de al menos $2000, entonces no se te dara el servicio de mecanica.";
};




