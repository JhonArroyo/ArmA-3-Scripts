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
	sleep 10;
[
	"<t  size = '2.0'>Febrero del 2034: se declara cuarentena total</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '2.0'>Marzo 5 del 2034: el pais solicita ayuda a la ONU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '2.0'>Marzo 25 del 2034: la OTAN se ofrece en la logistica militar</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '2.0'>Abril 28 del 2034: llegan las primeras ayudas de IDAP y ONU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '2.0'>Mayo 6 del 2034: la situacion se hace incontrolable</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '1.0'>Mayo 11 del 2034: la OTAN junto con la ONU inician la operacionU</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '3.0'>PROJECT OMEGA: CAPITULO 1</t>",
	safeZoneX+0.41, safeZoneY+safeZoneH-0.50, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
sleep 15;	

// Info text
	[str ("Codename: Project Omega"), str("Country: United Sahrani"), str("US NAVY"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
		
	sleep 2;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	
	player enableSimulation true;
	titleCut ["", "BLACK IN", 5];
	};
//sleep 89;