trader1 enableSimulation false;
rvg_supplies_custom = ["Supplies", 

  [ 

      ["rvg_plasticBottlePurified", 30,"CfgMagazines", 20], 

      ["rvg_canteenPurified", 50,"CfgMagazines", 2], 
	  
	  ["rvg_purificationTablets", 5,"CfgMagazines", 5],

      ["rvg_flare", 15,"CfgMagazines", 5], 

      ["rvg_guttingKnife", 75,"CfgMagazines", 3], 

      ["rvg_rustyCan", 30,"CfgMagazines", 1],
	  
	  ["rvg_franta", 10,"CfgMagazines", 5],
	  
	  ["rvg_spirit", 10,"CfgMagazines", 5],

      ["rvg_canOpener", 25, "CfgMagazines", 3], 

      ["rvg_sleepingBag_Blue", 150,"CfgMagazines", 3], 

      ["rvg_foldedTent", 300,"CfgMagazines", 1],

      ["FirstAidKit", 30,"CfgMagazines", 10]

  ] 

]; trader1 setVariable ["istrader", "rvg_supplies_custom", true];

trader2 enableSimulation false;
rvg_arms_custom = ["Arms", 

  [ 

     ["MRC_Black", 10,"CfgWeapons", 1],
	 
	 ["MRC_492x34_B_skin1", 5,"CfgMagazines", 10]

  ] 

]; trader2 setVariable ["istrader", "rvg_arms_custom", true];

trader3 enableSimulation false;
rvg_gear_custom = ["Gear", 

  [ 

     ["CUP_optic_HoloBlack", 5,"CfgWeapons", 1]

  ] 

]; trader3 setVariable ["istrader", "rvg_gear_custom", true];
