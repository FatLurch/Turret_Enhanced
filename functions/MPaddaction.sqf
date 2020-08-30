/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
Last edit: 
2019-02-04 - Adding more controllable CBA settings
2019-02-14 - Fixing Doubled actions due to no addaction radius
*/

//diag_log "-----LURCH DEBUG: MPaddaction called-----";

_unit = _this;

#include "\a3\editor_f\Data\Scripts\dikCodes.h"

["Turret Enhanced","add_blk_marker", "Mark Target (Blk)",{_this call fatlurch_fnc_addMarkerBlk}, "", [DIK_1, [true, false, false]]] call CBA_fnc_addKeybind;
["Turret Enhanced","add_blu_marker", "Mark Target (Blu)",{_this call fatlurch_fnc_addMarkerBlu}, "", [DIK_2, [true, false, false]]] call CBA_fnc_addKeybind;
["Turret Enhanced","add_red_marker", "Mark Target (Red)",{_this call fatlurch_fnc_addMarkerRed}, "", [DIK_3, [true, false, false]]] call CBA_fnc_addKeybind;

_actionID = _unit addAction ["Mark Target (Blk)", "_this call fatlurch_fnc_addMarkerBlk",nil, 1.1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];
_actionID = _unit addAction ["Mark Target <t color='#0000FF'>(Blu)</t>", "_this call fatlurch_fnc_addMarkerBlu",nil, 1.2,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];
_actionID = _unit addAction ["Mark Target <t color='#FF0000'>(Red)</t>", "_this call fatlurch_fnc_addMarkerRed",nil, 1.3,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];
_actionID = _unit addAction ["Slew to Grid", "Turret_Enhanced\scripts\inputGrid.sqf",nil, 1.05,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Grid))"];
_actionID = _unit addAction ["Measure Distance", "Turret_Enhanced\scripts\measDistance.sqf",nil, 0.9,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Measure))"];
_actionID = _unit addAction ["Change Altitude", "_this call fatlurch_fnc_changeAltitude",nil, 0.89,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR))"];	//2020_08_24


//_actionID = _unit addAction ["Map Slew", "_this call fatlurch_fnc_mapSlew",nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_MapSlew))"];

_actionID = _unit addAction ["Map Slew", 
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		[_target, _caller] call fatlurch_fnc_mapSlew;	
	},
	nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_MapSlew))"];


_this spawn fatLurch_fnc_North_Ind;	//2019_01_13

mkrNum=0;

