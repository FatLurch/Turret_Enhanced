/*
	Author: Lala14

	Description:
	Attempt to retrieve current unit the player is controlling to be used with
	currentVisionMode

	Parameter(s):
	NONE

	Returns:
	unit
*/
//for zeus or player
private ["_unitToCheckVision","_uav","_playerControl","_uavPos"];
_unitToCheckVision = missionNamespace getVariable ["bis_fnc_moduleRemoteControl_unit", player];
//check if controlling uav
if (!isNull (getConnectedUAV player)) then {
	_uav = getConnectedUAV player;
	_playerControl = (UAVControl _uav) find player;
	_uavPos = (UAVControl _uav) select (_playerControl + 1);
	if ((toLower _uavPos) isEqualTo "gunner") then {
		_unitToCheckVision = gunner (getConnectedUAV player);
	};
	if ((toLower _uavPos) isEqualTo "driver") then {
		_unitToCheckVision = driver (getConnectedUAV player);
	};
};
_unitToCheckVision
