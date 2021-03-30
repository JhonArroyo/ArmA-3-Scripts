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
sleep 2;
systemChat "P O R F A V O R   E S P E R E..";
sleep 2;
playSound "in2";
systemChat "C O M P R O B A N D O   F O N D O S";
sleep 4;
_mntCheck = [player] call HALs_money_fnc_getFunds;
hint format ["Founds:$%1",_mntCheck];
_cost_Repair = random [1500,2000,3000];
if (_mntCheck > _cost_Repair) then {
	if (fuel vehicle player == 1 || damage vehicle player == 0) then {
			systemChat "No se han encontrado nada que reparar, ni que alimentar";		
	}else{
		if ((_veh isKindOf "landvehicle") && (driver _veh == player)) exitWith { 
				systemChat "Repairing....";
				sleep 4;
				_veh setDamage 0;	
				_veh sidechat format ["%1 Repaired.", _vehType];	
				sleep 3;
				systemChat "Fueling....";
				sleep 4;
				_veh setFuel 1;
				_veh sidechat format ["%1 Refueled.", _vehType];
				sleep 2;
				_Total_Fnds = _cost_Repair;
				[player, -_Total_Fnds] call HALs_money_fnc_addFunds;
		};
	};
}else{systemChat format ["Si no dispones de $%1, entonces no se te dara el servicio de mecanica.",_cost_Repair];};
