_sequence01 = [] execVM "scripts\Cinematic\Intro_Sequence01.sqf";
waitUntil { scriptDone _sequence01 };

waitUntil {isTouchingGround player};
_sequence02 = [] execVM "scripts\Cinematic\Intro_Sequence02.sqf";
waitUntil {scriptDone _sequence02};

_tskCinematic01 = [] execVM "scripts\TskCompletedEvent\tsk_Event01.sqf";


