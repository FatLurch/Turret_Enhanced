/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
Last edit: 2019-01-08
*/

//diag_log "-----LURCH DEBUG: createMarker called-----";

_wPos = screenToWorld [0.5,0.5]; 
_seed = round(random 1e6); 
_var = "_USER_DEFINED_" + format["%1",_seed];
_grid = mapgridposition _wPos;


hint format["Marker %1 created at  %2", mkrNum, _grid]; 

_markerstr = createMarker [_var, _wPos]; 
_markerstr setMarkerShape "ICON"; 
_markerstr setMarkerType "hd_dot";
_markerstr setMarkerText format["%1",mkrNum];
_markerstr setMarkerColor "ColorBlue";

mkrNum=mkrNum+1;

_markerstr setMarkerSize [0.5, 0.5];