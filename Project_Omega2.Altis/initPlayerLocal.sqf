player addEventHandler ["GetInMan", {[_this select 2] execVM "scripts\kp_fuel_consumption.sqf";}];

//null = [["Codename: Project Omega","Location: Altis,Grace","CIA Spec-Ops",str(date select 1) + "." + str(date select 2) + "." + str(date select 0)], 0.01, 6] execVM "scripts\temp\infoText.sqf";