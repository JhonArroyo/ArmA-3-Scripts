_guyRecruited = true;

_fng = _this select 0;

_dropGuy = _fng addAction ["Dismiss","scripts\dropguyinit.sqf"];

while {_guyRecruited}
    do
    {
if (captive _fng) then {_guyRecruited = false};
if (not alive _fng) exitwith {_fng removeAction _dropGuy};
sleep 1;
    };
_fng removeAction _dropGuy;

[_fng] join grpNull;

_fng setCaptive true;

sleep 1;


if (not alive _fng)
    then
        {
            hint "Team member deceased";
        }
            else
                {
                    nul = [[["Team Member dismissed.","<t align='center' shadow='2' size='0.7'>%1</t><br/>"],["","<t align='center' shadow='2' size='0.7'>%1</t><br/>"],["","<t align='center' shadow='2' size='0.7'>%1</t>"]]] spawn BIS_fnc_typeText;
                    nul=[_fng] execVM "scripts\recruiting.sqf";
                };

            sleep 5;