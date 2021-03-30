_Unit = _this select 0;  
_id = _this select 2;  
_Unit removeAction _id;  

UsableUniforms = ["U_B_Protagonist_VR","U_B_Soldier_VR","U_C_Soldier_VR","U_I_Protagonist_VR","U_I_Soldier_VR","U_O_Protagonist_VR","U_O_Soldier_VR"]; 
  
  
  
If ((uniform _Unit) in UsableUniforms) then  
        { 

        // You can change these and it'll do the rest woooo  
        timer = 90;   
        cooldown = 30;  

        _source = "#particlesource" createVehiclelocal getpos _Unit;  
        _source setParticleCircle [0, [0.1, 0.1, 0.1]]; 
        _source setParticleRandom [0, [0, 0.1, 1], [0.1, 0, 0.1], 0, 0.1, [0, 0, 0, 0.1], 0, 0]; 
        _source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract", 1, 0, 1], "", "Billboard", 1, 4, [0, 0, 0], [0, 0, 0.5], 9, 10, 7.9, 0.1, [0.6, 1, 0.9, 0.8], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0, 0.1, 0.2, 0.5, 0.1, 0.1], 0, 0, "", "", _Unit]; 
        _source setDropInterval 0.1;  
        _source attachto [_Unit,[0,0,0]]; 
   
        sleep 1; 

        _Unit hideObjectGlobal true;    
        SystemChat "Cloak Active";    
        _Unit setCaptive true;    

    [timer] spawn  
    {  
        disableSerialization;  
        number = _this select 0;  
        _Display = uiNamespace getVariable "TAG_CLOAKBAR";  
        _setProgress = _display displayCtrl -1;  
        _setProgress progressSetPosition 1;  
        _number = (1/number);  
        BarTimer = 1;   
        for "_i" from 0 to number do   
        {    
            _setProgress progressSetPosition BarTimer;   
            BarTimer = BarTimer - (_number);  
            sleep 1;   

        };   
    };  


    while {!(timer == -1)} do   
        {    
            SystemChat format ["%1 seconds left",timer];   
            timer = timer -1;   
            sleep 1;   
        }; 

    deleteVehicle _source; 
    sleep 1; 
    _Unit hideObjectGlobal false;   
    
    SystemChat "Cloak Deactivated";   
    _Unit setCaptive false;   
   
    [cooldown] spawn  
    {  
        disableSerialization;  
        number = _this select 0;  
        _Display = uiNamespace getVariable "TAG_CLOAKBAR";  
        _setProgress = _display displayCtrl -1;  
        _setProgress progressSetPosition 1;  
        _number = (1/number);  
        BarTimer = 0;   
        for "_i" from 0 to number do   
        {    
            _setProgress progressSetPosition BarTimer;   
            BarTimer = BarTimer + (_number);  
            sleep 1;   

        };   
    };  
    timer = 0;  
    while {!(timer == cooldown)} do   
        {    
            timer = timer +1;   
            sleep 1;   
        };    
   
    _Unit addAction ["Cloak", "cloak.sqf", [], 6, false, true, "",""]; 
    playsound3d ["a3\missions_f_beta\data\sounds\firing_drills\drill_finish.wss",_Unit,false,getPosASL _unit,1,1,100];  
    systemChat "Your cloak has recharged"; 
    _Unit addaction ["Cloak", "Cloak.sqf", [], 6, false, true];   


    } else  
    {  
    // If you're not wearing the correct uniform 
        SystemChat "Your suit is not equipped with the Cloaking Technology"; 
        sleep 1; 
        _Unit addAction ["Cloak", "cloak.sqf", [], 6, false, true, "",""]; 
    };  

