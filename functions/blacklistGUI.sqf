//Returns a boolean indicating if that provided vehicle tytpe should have GUI commands blacklisted
//TRUE indicated an intem is blacklisted

params ["_veh"];

_blacklistArray = ["USAF_MQ9"];

_return = typeOf _veh in _blacklistArray;

_return

