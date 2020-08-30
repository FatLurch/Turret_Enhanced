//Returns a boolean indicating if that provided vehicle tytpe should have GUI commands blacklisted
//TRUE indicated an intem is blacklisted

params ["_veh"];

_blacklistArray = ["USAF_MQ9", "USAF_AC130U", "RHS_UH60M_d", "RHS_UH60M"];

_return = typeOf _veh in _blacklistArray;

_return

