//Retrieve vehicle reference 
_veh = uiNamespace getVariable ["controlledUAV", nil];

//Get the name of the vehicle
_groupID = groupID (group _veh);

//Trap invalid vehicle reference errors
if(isNil "_veh") exitWith {systemChat "Error: No vehicle selected. Exiting altitude change command"};

//Read inputs from dialog box
_input = ctrlText 500;	
_input2 = ctrlText 501;	

//Parse text input into numbers
_newAlt = parseNumber _input;
_terrainAvoidance = parseNumber _input2;

//Trap invalid input errors
if(_newAlt <= 0) exitWith {systemChat "Error: Invalid Altitude"};
if(_terrainAvoidance <= 0) exitWith {systemChat "Error: Invalid T.A. Altitude"};

//Command altitude changes
[_veh, _newAlt] remoteExec ["flyInHeight",owner _veh];
[_veh, [_terrainAvoidance, _terrainAvoidance, _terrainAvoidance]] remoteExec ["flyInHeightASL",owner _veh];

systemChat format["%1 commanded to %2 meters altitude and %3 meters terrrain avoidance", _groupID, _newAlt, _terrainAvoidance];

