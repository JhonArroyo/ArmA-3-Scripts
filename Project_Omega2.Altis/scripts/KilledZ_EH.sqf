_Zkilled = selectRandom [100,200,300,400];
[player, _Zkilled] call HALs_money_fnc_addFunds;

systemChat format ["%1",_Zkilled];// DEBUG