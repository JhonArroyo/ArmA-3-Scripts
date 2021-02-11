_index = lbCurSel 1500;
_weapon = lbData [1500, _index];

[player, _weapon, 3, 0] call BIS_fnc_addWeapon;