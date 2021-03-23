[0, 6, false, true ] call BIS_fnc_cinemaBorder;
[["Codename: Project Omega","Location: Altis,Grace","CIA Spec-Ops",str(date select 1) + "." + str(date select 2) + "." + str(date select 0)], 0.01, 6] execVM "scripts\temp\infoText.sqf";
//[str ("Codename: Project Omega"), str("Location: Altis/GR"), str("CIA SPEC-OPS"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
/*	
sleep 2;
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [6];   
"dynamicBlur" ppEffectCommit 0;     
"dynamicBlur" ppEffectAdjust [0.0];  
"dynamicBlur" ppEffectCommit 5;
sleep 5;
*/
playSound "in1";
playSound "fuz0";
["Classified name","Ehh Aaron hasta que porfin te despiertas...acaso no dormistes bien?"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Para serte sincero, la verdad es que no he podido. En el trayecto fue cuando pude encontrar la comonidad"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Classified name","Bueno mientras te incorporas del sueño te voy explicando ciertas advertencias a lo que llegamos a tu desembarco"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "fuz0";
["Classified name","Esta mision no son del tipo de misiones al que has venido realizando"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "fuz0";
["Classified name","Por ningun motivo nos contactes, ni diga a que organizacion trabajas ya que es totalmente clasificada"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "fuz0";
["Classified name","No vas a recibir ninguna ayuda excepto informes que respecten a la mision para que pases desapercibido"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "fuz0";
["Classified name","y por ultimo y menos importante se te dara algo de dinero ya que ciertas fuentes nos confirmaron que aqui todavia se sigue usando el dinero para intercambiar"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

[["IndpTrader", "Moneydrop01"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint;
playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Vale lo tengo todo claro"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
["Classified name","Cuando estes en tierra te contactaremos para explicarte mas a fondo de esta situacion que se desconoce"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;