/*
Adding zones must be done by server. If you add them via any other machine, it will simply not work!

Zones work as follows:
They are always circular!
You need to specify their center,their threat level (ranging between 0 and 5), their radius and fall off area!

The fall off area will add to the radius, but the threadlevel will not be in full effect. As example:
You want a threat area spanning 500 meters in radius, but you only want the full effect of threatlevel 3.5 withing 100 meters of the center, this would look like this:

[_pos, 3.5, 100, 400] call cbrn_fnc_createZone;

This will create a threat level 3.5 (Orange) zone around position _pos with total radius of 500 meters and full effect is 100 meter radius around the center!
*/

// setting up examples on map
[getMarkerPos "market_0", 1.5, 380, 380] call cbrn_fnc_createZone;
[getMarkerPos "market_1", 1.5, 400, 400] call cbrn_fnc_createZone;
[getMarkerPos "market_2", 3.5, 800, 1600] call cbrn_fnc_createZone;
