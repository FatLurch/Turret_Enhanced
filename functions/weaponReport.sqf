params["_veh"];

_report = [_veh] call fatLurch_fnc_getPylonAmmo select 2;

systemChat format["%1 weapons: %2", groupID (group _veh),_report];