params["_player", "_vehicle"];

_hasOpticsIn = false;
_return = false;

{
	_unit = _vehicle turretUnit _x;
	
	_config = [typeOf(_vehicle), _x] call BIS_fnc_turretConfig;
	if(toLower(configName (_config >> "opticsIn")) == "opticsin")then{_hasOpticsIn = true}else{_hasOpticsIn=false};;
	
	if(_player == _unit && _hasOpticsIn) exitWith
	{
		_return = true;
	};

}forEach allTurrets _vehicle;

_return