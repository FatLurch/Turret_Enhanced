/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
Last edit: 2019-01-21
*/



_veh = _this select 0;
//_grid=nil;
//tmpPos=nil;
hint format["_veh:%1", _veh];	//DEBUG

//_pilotCamTrack = vehicle player setPilotCameraTarget BIS_Edita;
//_this setPilotCameraTarget (visiblePositionASL _test);

openMap true;
hint "Click on the map to slew the turret";
//_veh onMapSingleClick "_this lockCameraTo [_pos, [0]];openMap false;hint format['Turret Slewed to %1', mapgridposition _pos];onMapSingleClick ''; true";

_veh onMapSingleClick "_test = 'Land_PenBlack_F' createVehicle _pos;openMap false;hint format['Turret Slewed to %1', mapgridposition _pos];_this setPilotCameraTarget (visiblePositionASL _test);_this lockCameraTo [visiblePositionASL _test];deleteVehicle _test;onMapSingleClick ''; true";

waitUntil {!visibleMap};

//hint "clicked";
waitUntil { _newPosEK=[round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)];sleep 0.1;_newPosEK isEqualTo [round (screenToWorld [0.5,0.5] select 0), round (screenToWorld [0.5,0.5] select 1)]};
//hint "free!";

sleep 0.1;
_veh lockCameraTo [objNull,[0]];

//_newPosEK=[round screenToWorld [0.5,0.5] select 0, round screenToWorld [0.5,0.5] select 1];

//screenToWorld [0.5,0.5] == _newPos

//Added automatic unlock (2019_01_13) after 5 seconds since  RHS MH-6 (MELB) doesn't seem to allow a camera unlock