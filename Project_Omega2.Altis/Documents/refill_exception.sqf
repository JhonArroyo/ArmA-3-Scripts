if (currentWeapon vehicle player == "arifle_ARX_blk_F") then {
	hintSilent "the currently weapon equipped is having trouble or conflict with ACE 3's ballistics thus not apply for Refill System";
}else{
	hint "An Magazine has been added to inventory";
	[player,currentWeapon player,1] call BIS_fnc_addWeapon;
};
    