sequence01 = [] execVM "scripts\Cinematic\Intro_Sequence01.sqf";
waitUntil { scriptDone sequence01 };

waitUntil {isTouchingGround player};
sequence02 = [] execVM "scripts\Cinematic\Intro_Sequence02.sqf";



