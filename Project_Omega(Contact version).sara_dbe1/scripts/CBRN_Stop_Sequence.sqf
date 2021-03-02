systemChat " P R E P A R A N D O   S E Q U E N C E"; //  DEBUG
systemChat " P E R M A N E Z C A  5  S E G";         //  FEBUG
sleep 5;   

systemChat " S E Q U E N C E  I N I T I A L L I Z I N G";
systemChat " SE DESACTIVA LA SIMULACION DEL PLAYER PARA QUE EMPIECE LA CINEMATICA Y EL PLAYER NO CORTE LA SEQUENCE";
systemChat " ...Y SE VUELVE A ACTIVAR AL FINAL AL COMPLETAR LA SEQUENCE";
//player enableSimulation false;
[0, 6, false, true ] call BIS_fnc_cinemaBorder;


guardstop switchMove "Acts_ComingInSpeakingWalkingOut_1";
sleep 6;

//guardstop playMove "Acts_ComingInSpeakingWalkingOut_2";
//sleep 6;

["CBRN SPEC-OPS","Alto ahi!! esta zona esta prohibida por su alta contaminacion, ¿Ingresaste por el Checkpoint de la CBRN?"] spawn BIS_fnc_showSubtitle;
guardstop playMove "Acts_PercMstpSlowWrflDnon_handup2c";
sleep 4;

["Maj.Aaron Warren","Pues tuve que entrar ya que tenia que recuperar algunos archivos..."] spawn BIS_fnc_showSubtitle;
sleep 4;

["CBRN SPEC-OPS","¿Archivos en el modulo medico....Acaso te envio la ONU?"] spawn BIS_fnc_showSubtitle;
sleep 4;

["CBRN SPEC-OPS","Espera un momento estoy recibiendo una señal....."] spawn BIS_fnc_showSubtitle;
sleep 4;

["Maj.Aaron Warren","Depronto sean los que me enviaron"] spawn BIS_fnc_showSubtitle;
sleep 4;

["CBRN SPEC-OPS","Eso veremos"] spawn BIS_fnc_showSubtitle;
sleep 4;

["CBRN SPEC-OPS","Señor lo estoy escuchando..."] spawn BIS_fnc_showSubtitle; // End animation
guardstop switchMove "Acts_ComingInSpeakingWalkingOut_7";
sleep 7;

["CBRN SPEC-OPS","vale...vale.....vale"] spawn BIS_fnc_showSubtitle;
guardstop playMove "Acts_ComingInSpeakingWalkingOut_8";
sleep 4;

["CBRN SPEC-OPS","Pues al parecer tienes la razon son tus amigos de la ONU"] spawn BIS_fnc_showSubtitle;
guardstop playMove "Acts_ComingInSpeakingWalkingOut_9";
sleep 5;

["CBRN SPEC-OPS","De igual manera no te puedo dejar entrar por esta lado y mas cuando no sabemos a lo que te expusistes en ese modulo"] spawn BIS_fnc_showSubtitle;
sleep 4;

["CBRN SPEC-OPS","Intenta por la entrada principal hay te diran los pasos para que entres"] spawn BIS_fnc_showSubtitle;
sleep 5;

[1, 6, false, true ] call BIS_fnc_cinemaBorder;
systemChat " P R E P A R A N D O   S E Q U E N C E - T E R M I N A T I N G ";  // DEBUG
systemChat " P E R M A N E Z C A  5  S E G";                                  // DEBUG
sleep 5;

systemChat " S E Q U E N C E  F I N I S H E D";                            // DEBUG
//player enableSimulation true;
