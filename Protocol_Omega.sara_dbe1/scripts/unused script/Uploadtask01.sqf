[laptop,
"Subir al servidor",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"player distance laptop < 5",
"player distance laptop < 5",
{},
{},
{//player removeItem "Item_SecretDocuments"; player removeItem "Item_FileTopSecret"; player removeItem "Item_SecretFiles";
	player removeItems "CUP_item_Cobalt_File"; 
	player removeItem "CUP_item_Kostey_photos";
},
{hint "Deja presionada la tecla"},
[],
5,
0,
true,
false
] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, true];

 /*  
    [ player,"Item_SecretDocuments",1 ] call BIS_fnc_invRemove;
	[ player,"Item_FileTopSecret",1 ] call BIS_fnc_invRemove; 
	[ player,"Item_SecretFiles",1 ] call BIS_fnc_invRemove;
*/

