
titleCut ["", "BLACK FADED", 9];
	[] Spawn {
	waitUntil{!(isNil "BIS_fnc_init")};
	sleep 0;
	playsound "intro";
	
	titleText ["","PLAIN DOWN"]; 
	titleFadeOut 5;
	sleep 0;

[
	"<t  size = '2.0'>ESCRIBIR TEXTO</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '1.0'>ESCRIBIR TEXTO2</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '1.0'>ESCRIBIR TEXTO2</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-1, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
	sleep 10;
[
	"<t  size = '3.0'>ESCRIBIR TEXTO3</t>",
	safeZoneX+0.41, safeZoneY+safeZoneH-0.50, 4, 4, 0, 890
] spawn bis_fnc_dynamicText;
sleep 4;	

// Info text
	[str ("Project Omega"), str("United Sahrani"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
		
	sleep 5;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	
	titleCut ["", "BLACK IN", 5];
	};

