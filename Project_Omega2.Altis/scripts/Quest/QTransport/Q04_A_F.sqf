truck04 = "B_Truck_01_box_F" createVehicle position target04;
truck02 setFuel 0.3;
_marker4 = createMarker ["Mkr2", position target04]; 
_marker4 setMarkerType "mil_circle"; 
_marker4 setMarkerColor "ColorBlack"; 
_marker4 setMarkerText "Transport IV";  
_marker4 setMarkerSize [1,1];

_Q04_Sequence_Handler = [] execVM "scripts\Quest\QTransport\Qtransport_S\Q02_S.sqf";
waitUntil {scriptDone _Q04_Sequence_Handler};