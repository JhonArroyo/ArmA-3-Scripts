class dialogTest
{
	idd = 1234;
	class controls
	{
		class baseFrame: RscFrame
		{
			idc = 1800;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.525 * safezoneW;
			h = 0.7 * safezoneH;
		};
		class weaponList: RscListbox
		{
			idc = 1500;
			x = 0.244062 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.28 * safezoneH;
		};
		class buttonGetWeapon: RscButton
		{
			idc = 1600;
			x = 0.244062 * safezoneW + safezoneX;
			y = 0.752 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.056 * safezoneH;
			text = "Get Weapon";
			action = "execVM 'takeWeapon.sqf'";
		};
		class weaponViewer: RscPicture
		{
			idc = 1200;
			text = "";
			x = 0.506562 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.249375 * safezoneW;
			h = 0.28 * safezoneH;
		};
	};
};