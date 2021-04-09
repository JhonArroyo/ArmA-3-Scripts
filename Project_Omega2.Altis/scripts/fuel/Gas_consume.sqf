_rol_vehcle = _this select 0;

while { _rol_vehcle == "driver" && vehicle player != player} do {
	sleep 1.5;
	_fuel = fuel vehicle player;
	_fuel_exp = _fuel * 100;
	_f_e = round _fuel_exp;
	if (_f_e <= 10) then {
		hint "Tu deposito esta al 10%, deberias ir a la gasolinera";
		sleep 10;
		hintSilent "";
	}else{
		systemChat format ["DEPOSITO: %1",_f_e]; //Debug
	};
};
