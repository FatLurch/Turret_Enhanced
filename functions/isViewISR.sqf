//isviewISR

//Erik Kofahl

params["_player", "_veh"];

if((unitIsUAV _veh) && (cameraView == "GUNNER") && (UAVControl _veh select 1 == "GUNNER")) exitwith{true};

if((!(unitIsUAV _veh)) &&(cameraView == "GUNNER") && (_veh getCargoIndex _player == -1))  exitwith {true};

false

