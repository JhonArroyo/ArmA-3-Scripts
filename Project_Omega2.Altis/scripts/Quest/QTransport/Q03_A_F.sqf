truck03 = "B_Truck_01_box_F" createVehicle position target03;
truck03 setFuel 0.5;
_marker3 = createMarker ["Mkr2", position target03]; 
_marker3 setMarkerType "mil_circle"; 
_marker3 setMarkerColor "ColorBlack"; 
_marker3 setMarkerText "Transport III";  
_marker3 setMarkerSize [1,1];

_Q03_Sequence_Handler = [] execVM "scripts\Quest\QTransport\Qtransport_S\Q02_S.sqf";
waitUntil {scriptDone _Q03_Sequence_Handler};