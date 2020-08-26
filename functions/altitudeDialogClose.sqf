//Retrieve new altitude from the text input

_veh = uiNamespace getVariable ["controlledUAV", nil];

if(isNil "_veh") exitWith {hint "Error: No vehicle selected. Exiting altitude change command"};

_input = ctrlText 500;		

_newAlt = parseNumber _input;

if(_newAlt == 0) exitWith {hint "Error: Invalid Altitude"};

_veh flyInHeight _newAlt;

hint format["Vehicle commanded to %1 meters altitude", _newAlt];

//TODO send flyinheight command to UAV
