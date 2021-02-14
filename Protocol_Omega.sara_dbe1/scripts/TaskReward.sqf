/*This statement execute following code <<Task Rewards System logic>>
	execVM "Scripts\TaskReward.sqf";
*/

_randomElement = selectRandom [2,4,6,8,10,12,14,16,30,40,50,80,100,120,150];

for "_i" from 1 to _randomElement do { player addMagazine "rvg_money"; };

hint format["Reward Received, You've $%1 for Trade",_randomElement];

