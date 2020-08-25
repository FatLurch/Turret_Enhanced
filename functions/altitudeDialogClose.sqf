//Retrieve new altitude from the text input
_input = ctrlText 500;		

_newAlt = parseNumber _input;

if(_newAlt == 0) exitWith {hint "Invalid Altitude"};

//TODO send flyinheight command to UAV
