//isviewISR

//Erik Kofahl
//Last edited 2019_01_20

_player = _this select 0;
_veh = _this select 1;

/*
//#################################################################################

_return = false;

{
	_unit = _veh turretUnit _x;
	
	_config = [typeOf(_veh), _x] call BIS_fnc_turretConfig;
	if((configName (_config >> "opticsIn") == "opticsIn")&&(_player == _unit))exitWith{_return=true};

}forEach allTurrets _veh;

//############################################################################
*/

//_hasOpticsIn = [_player, _veh] spawn fatLurch_fnc_hasOpticsIn;

if((unitIsUAV _veh) && (cameraView == "GUNNER") && (UAVControl _veh select 1 == "GUNNER")) exitwith{true};

//if((!(unitIsUAV _veh)) &&(cameraView == "GUNNER") && (_veh getCargoIndex _player == -1) && (_return)) exitwith {true};

if((!(unitIsUAV _veh)) &&(cameraView == "GUNNER") && (_veh getCargoIndex _player == -1))  exitwith {true};

false

