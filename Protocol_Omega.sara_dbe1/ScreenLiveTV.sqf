tv setObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];

uav lockCameraTo [tgt, [0]];

cam = "camera" camCreate [0,0,0];
cam cameraEffect ["External", "Back", "uavrtt"];

cam attachTo [uav, [0,0,0], "PiP0_pos"]; 

cam camSetFov 0.1;

/* switch cam to NVG */
"uavrtt" setPiPEffect [0];

/* adjust cam orientation */
addMissionEventHandler ["Draw3D", {
    _dir = 
        (uav selectionPosition "laserstart") 
            vectorFromTo 
        (uav selectionPosition "commanderview");
    cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];