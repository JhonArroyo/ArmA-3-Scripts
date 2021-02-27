playSound "in1";
playSound "fuz0";
HQ sideChat "Aterrizaje confirmado, asignando AIRDROP ZAG LORD";
sleep 5;
playSound "out1";
sleep 2;

cutText ["INICIANDO NUEVA FUNCION...", "PLAIN", 2];
for "_i" from 5 to 1 do { systemChat str _i; };
sleep 0.5;
cutText ["NUEVA FUNCION ASIGNADA AL CANAL BRAVO DE SU RADIO", "PLAIN", 2]; 
sleep 2; 
[["AirdropInstruction", "AirdropInstructions01"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint; 
_radio_2 = createTrigger["EmptyDetector",[0,0]]; 
_radio_2 setTriggerActivation["Bravo","PRESENT",true]; 
_radio_2 setTriggerStatements["this","execVM 'scripts\GF_Cargo_Airdrops\GF_Cargo_Airdrops_ZAG_LORD.sqf'",""]; 
.2 setRadioMsg "ZAG_LORD Airdrop"; 

