//isviewISR

//Erik Kofahl
//Last edited 2019_01_20

_player = _this select 0;
_veh = _this select 1;
//_retun = false;

if((unitIsUAV _veh) && (cameraView == "GUNNER") && (UAVControl _veh select 1 == "GUNNER")) exitwith{true};

if((!(unitIsUAV _veh)) &&(cameraView == "GUNNER") && (_veh getCargoIndex _player == -1)) exitwith{true};

false

