/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
Last edit: 2020-08-29
*/

params["_veh","_gunner"];

turretPath = _gunner call CBA_fnc_turretPath;

//Create interaction with user
openMap true;
systemChat "Click on the map to slew the turret";

//Move camera after map click
_veh onMapSingleClick {

	_test = "Land_PenBlack_F" createVehicle _pos;
	openMap false;
	systemChat format["Turret Slewed to %1", mapgridposition _pos];
	_this setPilotCameraTarget (visiblePositionASL _test);
	_this lockCameraTo [visiblePositionASL _test, turretPath];
	deleteVehicle _test;
	onMapSingleClick ""; 
	true
};

waitUntil {!visibleMap};

waitUntil { _newPosEK=[round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)];sleep 0.1;_newPosEK isEqualTo [round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)]};

//Unlock camera after it's done moving
sleep 0.1;
_veh lockCameraTo [objNull, turretPath];
