//params ["_realCam", "_renderTexture", "_fov", "_rotationLeft", "_rotationRight", "_camAngle", "_speed", "_pipEffect"];

params ["_realCam", "_renderTexture", "_fov", "_pipEffect"];

//#(argb,512,512,1)r2t(surface,aspectratio)

_pipCam = "camera" camCreate (getPos _realCam);

_pipCam camSetFov _fov;
_pipCam camCommit 0;

[_renderTexture, _pipCam] call BIS_fnc_PIP;

//Normal - [0], Night Vision - [1], Thermal - [2]
_renderTexture setPiPEffect [_pipEffect];

/*
_actualDirection = round (getDir _realCam);
_minAngle = _actualDirection - _rotationLeft;
_maxAngle = _actualDirection + _rotationRight;
_rotationSpeed = _speed;
_rotationSleep = 0.01;

while {true} do
{
	_actualDirection = _actualDirection + _rotationSpeed;
	_realCam setDir _actualDirection;
	_pipCam setDir (_actualDirection + 180);
	[_realCam, _camAngle * -1, 0] call BIS_fnc_setPitchBank;
	[_pipCam, _camAngle, 0] call BIS_fnc_setPitchBank;
	if ((_actualDirection == _maxAngle) or (_actualDirection == _minAngle)) then {_rotationSpeed = _rotationSpeed * -1;};
	
	sleep _rotationSleep;
};
*/