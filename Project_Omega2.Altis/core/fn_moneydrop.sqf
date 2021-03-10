/*
					*MONEY DROP (HAL's Store ADD-ON) SCRIPT EH*

					AUTHOR : JhonArroyo (WHITELOTUS)
					DATE CREATION: 2021-26-02, 15:30:00
*/
sleep 180;
systemChat "MONEYDROP SCRIPT, I N I T I A L I Z I N G"; // DEBUG
params ["_a01", "_a02", "_a03","_a04","_a05","_a06","_a07","_a08","_a09"];
_MoneyDrop_EH = selectRandom [_a01,_a02,_a03,_a04,_a05,_a06,_a07,_a08,_a09];
/*
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
*/
systemChat format ["HELP-COUNT SELECTED: %1,"_MoneyDrop_EH];
sleep 1.5;
systemChat "MONEYDROP SCRIPT, I N I T I A L I Z E D"; // DEBUG
for "_i" from _MoneyDrop_EH to 1 step -1 do 
{ 	sleep 240;
	null = [] execVM "scripts\MoneyReward.sqf";
	_eval = _i - 1;
	systemChat format ["HELP-COUNT LEFT: %1",_eval];
};
