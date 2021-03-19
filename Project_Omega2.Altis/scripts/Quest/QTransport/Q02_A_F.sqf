truck02 = "B_Truck_01_box_F" createVehicle position target02;
truck02 setFuel 0.5;
_marker2 = createMarker ["Mkr2", position target02]; 
_marker2 setMarkerType "mil_circle"; 
_marker2 setMarkerColor "ColorBlack"; 
_marker2 setMarkerText "Transport II";  
_marker2 setMarkerSize [1,1];

_Q02_Sequence_Handler = [] execVM "scripts\Quest\QTransport\Qtransport_S\Q02_S.sqf";
waitUntil {scriptDone _Q02_Sequence_Handler};