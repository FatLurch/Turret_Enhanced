//Retrieve vehicle reference 
_veh = uiNamespace getVariable ["controlledUAV", nil];

//Get the name of the vehicle
_groupID = groupID (group _veh);

//Trap invalid vehicle reference errors
if(isNil "_veh") exitWith {systemChat "Error: No vehicle selected. Exiting loiter change command"};

//Read inputs from dialog box
_input = ctrlText 500;	

//Parse text input into numbers
_newRadius = parseNumber _input;

//Trap invalid input errors
if(_newRadius <= 0) exitWith {systemChat "Error: Invalid Radius"};

//Command radius change
[group _veh, currentWaypoint group _veh] setWaypointLoiterRadius _newRadius;

//Enunciate change
systemChat format["%1 commanded to %2 meter loiter radius", _groupID, _newRadius];

