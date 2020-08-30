/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
*/

_unit = _this;

#include "\a3\editor_f\Data\Scripts\dikCodes.h"

["Turret Enhanced","add_blk_marker", "Mark Target (Blk)",{_this call fatlurch_fnc_addMarkerBlk}, "", [DIK_1, [true, false, false]]] call CBA_fnc_addKeybind;
["Turret Enhanced","add_blu_marker", "Mark Target (Blu)",{_this call fatlurch_fnc_addMarkerBlu}, "", [DIK_2, [true, false, false]]] call CBA_fnc_addKeybind;
["Turret Enhanced","add_red_marker", "Mark Target (Red)",{_this call fatlurch_fnc_addMarkerRed}, "", [DIK_3, [true, false, false]]] call CBA_fnc_addKeybind;

_unit addAction ["Mark Target (Blk)", "_this call fatlurch_fnc_addMarkerBlk",nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];
_unit addAction ["Mark Target <t color='#0000FF'>(Blu)</t>", "_this call fatlurch_fnc_addMarkerBlu",nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];
_unit addAction ["Mark Target <t color='#FF0000'>(Red)</t>", "_this call fatlurch_fnc_addMarkerRed",nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Markers))"];

_unit addAction ["Change Altitude", "_this call fatlurch_fnc_changeAltitude",nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR) && (_target isKindOf 'uav'))"];	//2020_08_24
_unit addAction ["Map Slew", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target, _caller] call fatlurch_fnc_mapSlew;},nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_MapSlew))"];
_unit addAction ["Slew to Grid", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target, _caller] call fatlurch_fnc_inputGrid;},nil, 1, false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Grid))"];
_unit addAction ["Measure Distance", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target] call fatlurch_fnc_measDistance;},nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(Fat_Lurch_Measure))"];
_unit addAction ["Weapon Status", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target] call fatlurch_fnc_weaponReport;},nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(_target isKindOf 'uav'))"];
_unit addAction ["Reset VMS", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target] call fatlurch_fnc_resetUAV;},nil, 1,false, true, "","(([_this, _target] call fatlurch_fnc_isViewISR)&&(_target isKindOf 'uav'))"];



/* TODO

-Change Loiter Radius if UAV and current waypoint type is loiter

*/


_this spawn fatLurch_fnc_North_Ind;

mkrNum=0;

