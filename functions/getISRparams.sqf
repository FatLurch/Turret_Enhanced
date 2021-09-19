//Returns a set of parameters required for whitelisting a certain vehicle view in Turret Enhanced. Functions assumes the player is in the aircraft in the view they would like whitelisted

params["_player"];

_veh = vehicle _player;

_result = [typeOf _veh, assignedVehicleRole _player, cameraView];

copyToClipboard str _result;

_result

