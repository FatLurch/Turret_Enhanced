/*

 *Copied 2019/11/30 with permission from commy2 on Reddit

 * Author: commy2, slightly modified by Fat_Lurch

 * Get players viewing direction and slope in vehicle relative angles (azimuth from -180 (full left) to 180 (full right), elevation from -90 (full down) to 90 (full up).

 *

 * Arguments:

 * Unit: the unit that hosts the turret

 *

 * Return Value:

 * 0: Azimuth <NUMBER>

 * 1: Inclination <NUMBER>

 *

 * Example:


 * [_unit] call fatlurch_fnc_turretAzEl;
 * [_unit] call fatlurch_fnc_turretAzEl params ["_azimuth", "_elevation"];

 */
 
 [_this select 0] call CBA_fnc_viewDir params ["_vDir", "_vInc"];



private _position = ATLToASL positionCameraToWorld [0, 0, 0];

private _direction = ATLToASL positionCameraToWorld [0, 0, 1];



private _wDir = ((_direction select 0) - (_position select 0)) atan2 ((_direction select 1) - (_position select 1));

private _wInc = asin ((_direction select 2) - (_position select 2));


private _azimuth = (_wDir - _vDir) call CBA_fnc_simplifyAngle180; 
private _inclination = (_wInc - _vInc) call CBA_fnc_simplifyAngle180;

[_azimuth, _inclination]