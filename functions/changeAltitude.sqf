//#include "\bin\dikCodes.h"

params["_veh"];

_tmp="";
_pos= [];

createDialog "inputCoords";	//TODO

waitUntil {!isNull (findDisplay 585);};
_ctrl=(findDisplay 585) displayCtrl 1400;
(findDisplay 585) displayAddEventHandler ["KeyDown", "if(_this select 1==0x9C) then {closeDialog 1;_ctrl=(findDisplay 585) displayCtrl 1400;coords = ctrlText _ctrl;_ctrl ctrlSetText '';};"];		//Use Enter key
ctrlSetFocus _ctrl;	//Set focus on the text edit 
waitUntil {!dialog};		//wait until the dialog is closed
_return=uinamespace getVariable "coordReturn";	//Return if the user commited the input or cancelled

if (_return==1) then
{


	//Do stuff
} 
else 
{
	hint "Operation Cancelled";
};