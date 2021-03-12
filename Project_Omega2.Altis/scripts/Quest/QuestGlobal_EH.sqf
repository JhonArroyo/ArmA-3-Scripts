systemChat "QUEST-GLOBAL EVENT HANDLER  F I N A L I Z I N G";
Q01_Handler = [] execVM "Quest\Q01_A_F.sqf";
waitUntil{scriptDone Q01_Handler};

Q02_Handler = [] execVM "Quest\Q02_A_F.sqf";
waitUntil{scriptDone Q02_Handler};


Q03_Handler = [] execVM "Quest\Q03_A_F.sqf";
waitUntil{scriptDone Q03_Handler};


Q04_Handler = [] execVM "Quest\Q04_A_F.sqf";
waitUntil{scriptDone Q04_Handler};

