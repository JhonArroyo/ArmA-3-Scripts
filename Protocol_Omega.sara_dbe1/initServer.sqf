player enableSimulation false;
titleCut ["", "BLACK FADED", 9];
	[] Spawn {
	waitUntil{!(isNil "BIS_fnc_init")};
	sleep 0;
	playsound "intro";
				
	titleText ["","PLAIN DOWN"]; 
	titleFadeOut 5;
	sleep 0;

[
	"<t  size = '2.0'>Enero del 2034: se descubrio un virus mortal en United Sharani</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '2.0'>Febrero del 2034: se declara cuarentena total</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '2.0'>Marzo 5 del 2034: el pais solicita ayuda a la ONU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '2.0'>Marzo 25 del 2034: la OTAN se ofrece en la logistica militar</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '2.0'>Abril 28 del 2034: llegan las primeras ayudas de IDAP y ONU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '2.0'>Mayo 6 del 2034: la situacion se hace incontrolable</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '1.0'>Mayo 11 del 2034: la OTAN junto con la ONU inician la operacionU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 5;
[
	"<t  size = '3.0'>PROJECT OMEGA: CAPITULO 1</t>",
	safeZoneX+0.41, safeZoneY+safeZoneH-0.50, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
sleep 4;	

// Info text
	[str ("Codename: Project Omega"), str("Country: United Sahrani"), str("US NAVY"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
		
	sleep 5;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	
	player enableSimulation true;
	titleCut ["", "BLACK IN", 5];
	};
sleep 5;

null = [this] execVM "scripts\initConversation.sqf";
null = [[monitor1,monitor2,monitor3,monitor4],["s1","s2","s3","s4","s5"]] execVM "scripts\LFC\Feedinit.sqf";


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

//[getMarkerPos "market_3",4.5, 600,1200] call cbrn_fnc_createZone;