_handler0 = [] execVM "intro.sqf";
sleep 93;

systemChat "P O S T - I N T R O   I N I T I A L I Z I N G";
_handler1 = [] execVM "scripts\initConversation.sqf";
sleep 31;

systemChat "R A V A G E  T R A D E R S   I N I T I A L I Z I N G ";
_handler2 = [] execVM "scripts\Trader_ravage_custom.sqf";


// Create my own Scheduler Handler for lightweight executing Sever.
/*
	Hal's Purchase system 
*/
if (!isDedicated) then {
	// Give the player 10,000 starting money
	[player, 10000] call HALs_money_fnc_addFunds;
};

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

private _trader3 = trader3;
if (isServer) then {
	[_trader3, "pharmacy"] call HALs_store_fnc_addTrader; 
	_trader3 enableSimulationGlobal false; 
	_trader3 allowDamage false;
	_trader3 setCaptive true;

	[_trader3, "GUARD", "ASIS"] remoteExecCall ["BIS_fnc_ambientAnim", 0, true];
};
sleep 10;

/*
Adding zones must be done by server. If you add them via any other machine, it will simply not work!

Zones work as follows:
They are always circular!
You need to specify their center,their threat level (ranging between 0 and 5), their radius and fall off area!

The fall off area will add to the radius, but the threadlevel will not be in full effect. As example:
You want a threat area spanning 500 meters in radius, but you only want the full effect of threatlevel 3.5 withing 100 meters of the center, this would look like this:

[_pos, 3.5, 100, 400] call cbrn_fnc_createZone;
//This will create a threat level 3.5 (Orange) zone around position _pos with total radius of 500 meters and full effect is 100 meter radius around the center!
*/


// setting up examples on map
[getMarkerPos "market_t2", 1.5, 150, 380] call cbrn_fnc_createZone;
[getMarkerPos "market_t3", 2.5, 200, 400] call cbrn_fnc_createZone;
[getMarkerPos "market_t4", 3.5, 800, 1600] call cbrn_fnc_createZone;

//[getMarkerPos "market_3",4.5, 600,1200] call cbrn_fnc_createZone;

/*
	M O N E Y D R O P   E X E C U T I N G   S C R I P T (HAL'S STORE ADD-ON)
	AUTHOR: JhonArroyo ()WHITELOTUS)
	DATE CREATION: 2021-02-27
	TIME CREATION: 20:57:44
	
The following code structure seeks the creation of an event handler in a personalized way where every 30 minutes 
the user who is playing receives a certain sum of money in a random way 
based on a help counter that is also random. 
 
*/

systemChat "MONEYDROP SCRIPT, I N I T I A L I Z I N G"; // DEBUG 
_MoneyDrop_EH = selectRandom [10,20,30,40,50,60,70,80,90,100];
switch (_MoneyDrop_EH) do {
	case 10: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 20: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] }; 
	case 30: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 40: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 50: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 60: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 70: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 80: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 90: {systemChat format ["HELP-COUNT SELECTED: %1",_MoneyDrop_EH] };
	case 100: {hintSilent "Congrats actually you've the best HELP-COUNT" };
};
sleep 1.5;
systemChat "MONEYDROP SCRIPT, I N I T I A L I Z E D"; // DEBUG
for "_i" from _MoneyDrop_EH to 1 step -1 do 
{ 	sleep 60;
	null = [] execVM "scripts\MoneyReward.sqf";
	_eval = _i - 1;
	systemChat format ["HELP-COUNT LEFT: %1",_eval];
};

