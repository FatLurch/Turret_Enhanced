/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
*/


if(!(Fat_Lurch_Markers)) exitWith {};

if ((isNull getConnectedUAV player) && (player == vehicle player)) exitwith {};
if (isNull getConnectedUAV player) then
{
	target = vehicle player;
}
else
{
	target = getconnectedUAV player;
};

if(!([player, target] call fatlurch_fnc_isViewISR)) exitwith {};

_wPos = screenToWorld [0.5,0.5]; 
_seed = round(random 1e6); 
_var = "_USER_DEFINED_" + format["%1",_seed];
_grid = mapgridposition _wPos;
_channelArray = ["Global", "Side", "Command", "Group", "Vehicle", "Direct"];
_channel = currentChannel;

systemChat format["Blue marker %1 created at  %2 in %3", mkrNum, _grid, _channelArray select _channel];  

_markerstr = createMarker [_var, _wPos, _channel, player]; 
_markerstr setMarkerShape "ICON"; 
_markerstr setMarkerType "hd_dot";
_markerstr setMarkerText format["%1",mkrNum];
_markerstr setMarkerColor "ColorBlue";

mkrNum=mkrNum+1;

_markerstr setMarkerSize [0.5, 0.5];