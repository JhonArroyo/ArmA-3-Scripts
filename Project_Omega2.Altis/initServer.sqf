intro_handler = [] execVM "scripts\cinematic\Intro.sqf";
waitUntil { scriptDone intro_handler };
sleep 2;
// Create my own Scheduler Handler for lightweight executing Sever.
/*
	Hal's Purchase system 
*/
if (!isDedicated) then {
	// Give the player 10,000 starting money
	[player, 10000] call HALs_money_fnc_addFunds;
};
//INDENP TRADER
private _trader1 = trader1;
if (isServer) then {
	[_trader1, "weapon"] call HALs_store_fnc_addTrader; 
	
	_trader1 enableSimulationGlobal false; 
	_trader1 allowDamage false; 
	_trader1 setUnitLoadout [
		[], [], [],
		["U_I_C_Soldier_Para_1_F", []],
		[], [], "H_MilCap_grn", "", [],
		["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]
	];   

	[_trader1, "LEAN_ON_TABLE", "ASIS", pointer] remoteExecCall ["BIS_fnc_ambientAnim", 0, true];
};

private _trader2 = trader2;
if (isServer) then {
	[_trader2, "navigation"] call HALs_store_fnc_addTrader; 
	_trader2 enableSimulationGlobal false; 
	_trader2 allowDamage false;
	_trader2 setCaptive true;

	[_trader2, "GUARD", "ASIS"] remoteExecCall ["BIS_fnc_ambientAnim", 0, true];
};
/*
private _trader3 = trader3;
if (isServer) then {
	[_trader3, "pharmacy"] call HALs_store_fnc_addTrader; 
	_trader3 enableSimulationGlobal false; 
	_trader3 allowDamage false;
	_trader3 setCaptive true;

	[_trader3, "GUARD", "ASIS"] remoteExecCall ["BIS_fnc_ambientAnim", 0, true];
};

//BLUFOR TRADERS
private _trader1a = trader1a;
if (isServer) then{
	[_trader1a, "weapon"] call HALs_store_fnc_addTrader;
	_trader1a enableSimulationGlobal false;
	_trader1a allowDamage false;
	_trader1a setCaptive true;
};

private _trader2a = trader2a;
if (isServer) then{
	[_trader1a, "navigation"] call HALs_store_fnc_addTrader;
	_trader2a enableSimulationGlobal false;
	_trader2a allowDamage false;
	_trader2a setCaptive true;
};

private _trader3a = trader3a;
if (isServer) then{
	[_trader3a, "pharmacy"] call HALs_store_fnc_addTrader;
	_trader3a enableSimulationGlobal false;
	_trader3a allowDamage false;
	_trader3a setCaptive true;
};
*/
player addEventHandler ["GetInMan", {[_this select 2] execVM "scripts\kp_fuel_consumption.sqf";}];
sleep 180;
"Mkr1" setMarkerAlpha 1;
_QuestGlobal_Handler = [] execVM "scripts\Quest\QuestGlobal_EH.sqf";
waitUntil{scriptDone _QuestGlobal_Handler};
[4,5,6,8,10] call PO_fnc_moneydrop;
