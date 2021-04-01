/**
*********************************************************
*			E V A N'S   M E C H A N I C	 v.1			*
*				Author = JhonArroyo (WHITELOTUS)		*
*				DATE CREATION: 2021-03-28				*
*				TIME CREATION: 19:09:00					*
*********************************************************
	Private Arguments(s):
	0: Unit <OBJECT (Vehicle)>
	1: VehType <Reference CfgVehicle String>

	Fuction Add-on Needed:
	HAL's Store

	Return Value:
	None

	Example:
	[] call WhiteLotus_fnc_gastation;
 */
private ["_veh","_vehType"];
_veh = _this select 0;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");
_cost_Avrg = selectRandom [250,500,1000,2000,3000];
playSound "in1";
systemChat "W E L C O M E ";
sleep 2;
systemChat "P L E A S E  W A I T..";
sleep 2;
playSound "in2";
hint format [" A C T U A L  P R I C E: $%1",_cost_Avrg];
sleep 4;
hintSilent "";
systemChat "C H E C K I N G  F O U N D S";
sleep 4;
_mntCheck = [player] call HALs_money_fnc_getFunds;
hint format ["Founds:$%1",_mntCheck];
sleep 2;
hintSilent "";
switch (_mntCheck > _cost_Avrg) do{
	case true:
	{
		if (fuel vehicle player != 1) then {
			if ((_veh isKindOf "landvehicle") && (driver _veh == player)) exitWith { 
					systemChat "Fueling....";
					_veh setFuel 1;
					_veh sidechat format ["%1 Refueled.", _vehType];
					sleep 2;
					_Total_Fnds = _cost_Avrg / 2;
					[player, -_Total_Fnds] call HALs_money_fnc_addFunds;
					systemChat format ["Cost for fueling service: $%1",_Total_Fnds];
			};	
		}else{systemChat "Dispones del tanque lleno";};
		sleep 3;
		if (damage vehicle player != 0) then {
			if ((_veh isKindOf "landvehicle") && (driver _veh == player)) exitWith { 
					systemChat "Repairing....";
					_veh setDamage 0;	
					_veh sidechat format ["%1 Repaired.", _vehType];
					sleep 3;
					_Total_Fnds = _cost_Avrg / 2;
					[player, -_Total_Fnds] call HALs_money_fnc_addFunds;
					systemChat format ["Cost for repairing service: $%1",_Total:_Fnds];
			};
		}else{systemChat "You haven't anything to be repaired or fueled";};
	};

	case false:
	{
		systemChat format ["If you don't provide actual price $%1. Therefore, it will not be given the Mechanic Service. (include both services)",__cost_Avrg];
	};
};
