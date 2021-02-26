//	GF_Cargo_Airdrops_ZAG_LORD.sqf
_radio_2 = createTrigger["EmptyDetector",[0,0]];
_radio_2 setTriggerActivation["Bravo","PRESENT",true];
_radio_2 setTriggerStatements["this","execVM 'scripts\GF_Cargo_Airdrops\GF_Cargo_Airdrops_ZAG_LORD.sqf'",""];
.2 setRadioMsg "ZAG_LORD Airdrop";