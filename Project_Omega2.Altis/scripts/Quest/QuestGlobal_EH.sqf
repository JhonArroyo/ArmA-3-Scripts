systemChat "QUEST-GLOBAL EVENT HANDLER  F I N A L I Z I N G";
systemChat "QUEST-01  F I N A L I Z I N G";
Q01_Handler = [] execVM "scripts\Quest\QTransport\Q01_A_F.sqf";
waitUntil{scriptDone Q01_Handler};
sleep 3600;
systemChat "QUEST-02  F I N A L I Z I N G";
Q02_Handler = [] execVM "scripts\Quest\QTransport\Q02_A_F.sqf";
waitUntil{scriptDone Q02_Handler};
sleep 3600;
systemChat "QUEST-03  F I N A L I Z I N G";
Q03_Handler = [] execVM "scripts\Quest\QTransport\Q03_A_F.sqf";
waitUntil{scriptDone Q03_Handler};
sleep 3600;
systemChat "QUEST-04  F I N A L I Z I N G";
Q04_Handler = [] execVM "scripts\Quest\QTransport\Q04_A_F.sqf";
waitUntil{scriptDone Q04_Handler};

// [] execVM "scripts\Quest\QTransport_C\Q01_C.sqf";