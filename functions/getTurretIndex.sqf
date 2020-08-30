//Returns the turret index for the indicated weapon on a vehicle

params["_vehicle", "_weapon", "_gunner"];

_config = [];

//Exit if _vehicle or _weapon aren't provided
if(isNil "_vehicle") exitWith {systemChat "getTurret Error: No vehicle provided"};	
if(isNil "_weapon") exitWith {systemChat "getTurret Error: No weapon provided"};

_return = -1;	//default return value

{	
	_config = [_vehicle, _x] call BIS_fnc_turretConfig;
	
	//Check to see if this turret is the *right* one based on which gunner is using it. This is intended to prevent crap behavior if a vehicle has more than 1 of any weapon type
	//if(_vehicle turretUnit [_forEachIndex] == _gunner) then
	if(_vehicle turretUnit _x == _gunner) then
	{
	
		_turretWeapons = getArray(_config >> "weapons");	//retrieve an array of turret weapons
		
		if(count _turretWeapons ==0) exitWith{};		//If the turret doesn't have any weapons, bail out and try the next one
		
		if(_weapon in _turretWeapons) exitWith {_return = _x};	
		
	};
	
}forEach allTurrets _vehicle;	//For each of the turrets on the vehicle

_return;

