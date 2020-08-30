//Returns the turret index for the indicated weapon on a vehicle

params["_vehicle", "_weapon", "_gunner"];

_config = [];

//diag_log format["### getTurretIndex - _vehicle: %1    _weapon: %2     _gunner: %3", _vehicle, _weapon, _gunner];

//Exit if _vehicle or _weapon aren't provided
if(isNil "_vehicle") exitWith {systemChat "getTurret Error: No vehicle provided"};	
if(isNil "_weapon") exitWith {systemChat "getTurret Error: No weapon provided"};

_return = -1;	//default return value

{
	//diag_log format["### getTurretIndex - _x: %1", _x];
	
	_config = [_vehicle, _x] call BIS_fnc_turretConfig;
	
	//diag_log format["### getTurretIndex - _config: %1", _config];
	
	//Check to see if this turret is the *right* one based on which gunner is using it. This is intended to prevent crap behavior if a vehicle has more than 1 of any weapon type
	//if(_vehicle turretUnit [_forEachIndex] == _gunner) then
	if(_vehicle turretUnit _x == _gunner) then
	{
	
		_turretWeapons = getArray(_config >> "weapons");	//retrieve an array of turret weapons
		
		//diag_log format["### getTurretIndex - _turretWeapons: %1      _weapon: %2     bool: %3", _turretWeapons, _weapon, (_weapon in _turretWeapons)];
		
		if(count _turretWeapons ==0) exitWith{};		//If the turret doesn't have any weapons, bail out and try the next one
		
		//if(_weapon in _turretWeapons) exitWith {_return = _forEachIndex};	//This is the right turret & the right weapon
		if(_weapon in _turretWeapons) exitWith {_return = _x};	//This is the right turret & the right weapon
		
	};
	
//}forEach configProperties [configfile >> "CfgVehicles" >> typeOf(_vehicle) >> "Turrets"];	//For each of the turrets on the vehicle
}forEach allTurrets _vehicle;	//For each of the turrets on the vehicle

//diag_log format["### end of getTurrretIndex. _return: %1", _return];

_return;

