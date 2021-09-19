//specific evaluation to determine if someone is in the copilot sensor view of a Hatchet H-60 variant

params["_player", "_veh"];

_H60List = ["vtx_HH60", "vtx_MH60M", "vtx_MH60M_DAP", "vtx_MH60S", "vtx_MH60S_GAU21L", "vtx_MH60S_Pylons"];

if (typeOf _veh in _H60List && assignedVehicleRole _player isEqualTo ["turret",[0]] && !isNil "vtx_uh60_flir_camera") exitWith {true};

false





