/*
	Author = JhonArroyo (WHITELOTUS)
	DATE CREATION: 2021-03-05
	TIME CREATION: 18:22:20

*/

if (vehicle player != player) then {
	gate2Veh = nearestBuilding someObject;
	gate2Veh animate ["Door_5_rot", 0];
	gate2Veh animate ["Door_6_rot", 0];
}else{
	gate2Player = nearestBuilding someObject;
	gate2Player animate ["Door_1_rot", 0];
	gate2Player animate ["Door_2_rot", 0];	
};
