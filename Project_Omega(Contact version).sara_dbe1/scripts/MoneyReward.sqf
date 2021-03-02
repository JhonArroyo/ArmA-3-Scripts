_randomElement = selectRandom [200,400,600,800,1000,1200,1400,1600,3000,4000,5000,8000,100000,120000,150000];

[player, _randomElement] call HALs_money_fnc_addFunds;

private _text1 = text format ["Thanks you so much for still playing my mission. Reward Received, You've $%1 to be used in INDENP CAMP", _randomElement];
private _text2 = text "Next Reward in 1 minute";
private _txt   = composeText [_text1, lineBreak, _text2];
"ADVICE" hintC _txt;
hintC_array_EH = findDisplay 72 displayAddEventHandler ["unload", {
	0 = _this spawn {
		_this select 0 displayRemoveEventHandler ["unload", hintC_array_EH];
		hintSilent "";
	};
}];