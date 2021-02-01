/*  Usage: put this in INIT of the unit to be recruited;
nul=[this] execVM "scripts\recruiting.sqf";
*/
_guyNotRecruited = true;

_fng = _this select 0;

_fng setcaptive true;

_recruitGuy = _fng addAction ["Recruit","scripts\newguyinit.sqf"];

while {_guyNotRecruited}
    do
    {
if (not(captive _fng)) then {_guyNotRecruited = false};
if (not alive _fng) exitwith {_fng removeAction _recruitGuy};
sleep 1;
    };
_fng removeAction _recruitGuy;

[_fng] join (group player);

_fng enableAI "MOVE";
sleep 1;

nul = [[["New Team Member recruited.","<t align='center' shadow='2' size='0.7'>%1</t><br/>"],["","<t align='center' shadow='2' size='0.7'>%1</t><br/>"],["","<t align='center' shadow='2' size='0.7'>%1</t>"]]] spawn BIS_fnc_typeText;
sleep 5;

nul=[_fng] execVM "scripts\dismissing.sqf";