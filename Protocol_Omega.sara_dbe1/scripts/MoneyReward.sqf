_randomElement = selectRandom [200,400,600,800,1000,1200,1400,1600,3000,4000,5000,8000,100000,120000,150000];

[player, _randomElement] call HALs_money_fnc_addFunds;

hint format["Reward Received, You've $%1 for Trade",_randomElement];