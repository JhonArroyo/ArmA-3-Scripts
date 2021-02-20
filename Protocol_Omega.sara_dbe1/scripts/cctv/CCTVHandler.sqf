params ["_trigNameSetFromEditor"];
_a = 1;
_b = 0;
while {_a > _b}
do
{

if (!triggerActivated _trigNameSetFromEditor)
then
{ 
	hintSilent "Checkpoint-CCTV confirm not activated yet."; //Created only by Debugging task;
}else
{
	hint "Checkpoint-CCTV  activated"; //Created only by Debugging task; 
	_script = [cam1, "piprendertg1", 0.7, 0] execVM "scripts\cctv\setSurveillanceCam.sqf"; // CCTV Exec
	_b = 2; // Break loop-Conditional
};
sleep 0.5;
};
