_completed01 = "120" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed01 == true)
};

_completed02 = "150" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed02 == true)
};
/*
_completed03 = "tsk_03" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed03 == true)
};

_completed04 = "tsk_04" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed04 == true)
};

_completed05 = "tsk_05" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed05 == true)
};

_completed06 = "tsk_06" call BIS_fnc_taskCompleted;
waitUntil 
{
	if (_completed06 == true)
};
*/