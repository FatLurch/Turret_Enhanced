//#include "\bin\dikCodes.h"

//_veh = _this select 0;

params["_veh","_gunner"];

turretPath = _gunner call CBA_fnc_turretPath;

_tmp="";
_pos= [];

createDialog "inputCoords";

waitUntil {!isNull (findDisplay 585);};
_ctrl=(findDisplay 585) displayCtrl 1400;
(findDisplay 585) displayAddEventHandler ["KeyDown", "if(_this select 1==0x9C) then {closeDialog 1;_ctrl=(findDisplay 585) displayCtrl 1400;coords = ctrlText _ctrl;_ctrl ctrlSetText '';};"];		//Use Enter key
ctrlSetFocus _ctrl;	//Set focus on the text edit 
waitUntil {!dialog};		//wait until the dialog is closed
_return=uinamespace getVariable "coordReturn";	//Return if the user commited the input or cancelled

if (_return==1) then
{


	_len = count (toArray coords);

	if(_len == 6) then 
	{
		_tmp = coords call BIS_fnc_gridToPos;
		_pos = (_tmp select 0) + [0];		//[XXXX,YYYY,0]
		
		_myx = (_pos select 0) + 50;	//add 50 to coords to make turret point at center of grid
		_myy = (_pos select 1) + 50;	//add 50 to coords to make turret point at center of grid
		_pos set [0,_myx];
		_pos set [1,_myy];
		_pos set [2,0];
	};
	
	//["dreaded_is_the_man", 0, 6] call BIS_fnc_trimString; // will return "dreaded"
	//["dreaded_is_the_man", 15] call BIS_fnc_trimString; // will return "man"
	
	
	if(_len == 8) then 
	{
		_pos set [0, (parseNumber ([coords, 0, 3] call BIS_fnc_trimString))*10];
		_pos set [1, (parseNumber ([coords,  4] call BIS_fnc_trimString))*10];
		_pos set [2,0];
	};
	
	
	if(_len == 10) then 
	{
		_pos set [0, (parseNumber ([coords, 0, 4] call BIS_fnc_trimString))];
		_pos set [1, (parseNumber ([coords,  5] call BIS_fnc_trimString))];
		_pos set [2,0];
	};
	
	_tmpPos = "Land_PenBlack_F" createVehicle _pos;
	sleep 0.1;
	_veh lockCameraTo [visiblePositionASL _tmpPos, turretPath];
	_veh setPilotCameraTarget (visiblePositionASL _tmpPos);
	sleep 0.1;
	deleteVehicle _tmpPos;
	systemChat format["Turret Slewed to %1", coords];
	waitUntil { _newPosEK=[round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)];sleep 0.1;_newPosEK isEqualTo [round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)]};
	sleep 0.1;
	_veh lockCameraTo [objNull,turretPath];
} 
else 
{
	systemChat "Operation Cancelled";
};