_weaponArray = "getNumber (_x >> 'type') == 2 && getNumber (_x >> 'scope') == 2 " configClasses (configFile >> "cfgWeapons");
_pistolArray = [];

_sortWeapons =
{
	_array = (_this select 0);
	{
		_array deleteAt (_array find _x);
	} forEach _array;
	_array;
};


{	
	_wep = configName _x;
	_wepClass = getText (configFile >> "cfgWeapons" >> _wep >> "baseWeapon");
	if (_wepClass != "")then
	{
		_pistolArray pushBack _wepClass;
	};
} forEach _weaponArray;


_pistolArray = [_pistolArray] call _sortWeapons;


{
	_wepName = getText (configFile >> "cfgWeapons" >> _x >> "displayname");
	lbAdd[1500,_wepName];
	lbSetData [1500, _forEachIndex, _x];
} forEach _pistolArray;




//while (true) do 
{
	//_index = lbCurSel 1500;
	//_weapon = lbData [1500, _index];
	//_picture = getText (configFile >> "cfgWeapons" >> _weapon >> "picture");
	//ctrlSetText [1200, _picture];
	//sleep 0.1;
//};