/*
Written by Erik Kofahl (Fat_Lurch) for TSOG
Last edit: 2019-02-03 - Added GUI options
2019-11-30 - Adding Azimuth and Elevation indicators
*/

disableSerialization;

_unit = _this;

_blacklistGUI = [_unit] call fatLurch_fnc_blacklistGUI;

if(_blacklistGUI) exitWith{};

Hz = 200;		//commanded execution rate in Hertz
period = 1/Hz; //calculated period to wait in seconds (assuming 1 second rate from diag_TickTime)
radius = 0.3;

while{alive _unit} do
{
	uisleep period; 
	
	if(([player, _unit] call fatlurch_fnc_isViewISR)&& (cameraOn == _unit)) then
	{
		
		[_unit] call fatlurch_fnc_turretAzEl params ["_turretAz", "_turretEl"];	//Cheers to commy2 for the help with this. This is the Az & El for the HUD
	
		mypitch = _unit call BIS_fnc_getPitchBank select 0;								//get the pitch of the vehicle
		myroll = _unit call BIS_fnc_getPitchBank select 1;								//get the roll of the vehicle
		vehDir = getDir _unit;																				//get the heading of the vehicle
				
		_wPos = screenToWorld [0.5,0.5];
		_vPos = getPos _unit;
	
		_testVec = _vPos vectorFromTo _wPos;
		
		_Az =-1* ( (_testVec select 0) atan2 (_testVec select 1));	//This is the turret azimuth for calculating grids
		_El = aSin(_testVec select 2);	//This is the turret elevation, but it's wonky because it counts on the view intersection the ground (via screenToWorld). It's good enough for calculating the grid references apparently
				
		_target="";
	
		if (missionnamespace getVariable "Fat_Lurch_ShowTarget") then 
		//If the user wants to see the target grid on the CBA setting
		{
			x4 = str (round((_wPos select 0)/10));
			y4 = str (round((_wPos select 1)/10));
			while {count x4 < 4} do {x4 = format["0%1",x4]};
			while {count y4 < 4} do {y4 = format["0%1",y4]};
			
			x5 = str (round(_wPos select 0));
			y5 = str (round(_wPos select 1));
			while {count x5 < 5} do {x5 = format["0%1",x5]};
			while {count y5 < 5} do {y5 = format["0%1",y5]};		
			
			switch Fat_Lurch_GridNum do 
				{
				case 6: { _target = format["TGT: %1", (mapGridPosition _wPos)];};
				case 8: { _target = format["TGT: %1 %2", x4, y4]};
				case 10: { _target = format["TGT: %1 %2", x5, y5]};
				default { systemChat "Grid number error" };
				};
		
		};
	
		_posx = (radius * sin _Az)/(4/3);
		_posy = ((radius * cos _Az)*(sin _El))-0.0325;		//good solution if marker allowed in box
	
		
		_newPosition = [_posx, _posy];
		
		
		
		uiNamespace setVariable ["newPosition",_newPosition];			
	
		
		
		if (missionnamespace getVariable "Fat_Lurch_ShowNorth") then {710 cutRsc ["North", "Plain", -1, false];};	//Enable/disable from CBA
		if (missionnamespace getVariable "Fat_Lurch_ShowAz") then {709 cutRsc ["Az", "Plain", -1, false];};		//Enable/disable from CBA
		if (missionnamespace getVariable "Fat_Lurch_ShowEl") then {708 cutRsc ["El", "Plain", -1, false];};		//Enable/disable from CBA
	
	
		uiNameSpace getVariable "myUI_LevelTitle" ctrlSetText(_target);
		uiNameSpace getVariable "guiEl" ctrlSetText(format["%1",round(_turretEl)]);
		uiNameSpace getVariable "guiAz" ctrlSetText(format["%1",round(_turretAz)]);
		
		
		
		uiNamespace setVariable ["guiAzPos",0.45+((_turretAz)/180)*0.15];	
		//uiNamespace setVariable ["guiElPos",-0.102+(_turretEl*-0.0041905)];
		uiNamespace setVariable ["guiElPos",-0.002+(_turretEl*-0.0041905)];	//Updated Y pos to work better with USAF MQ-9
		
		uiNameSpace getVariable "guiHdg" ctrlSetText(format["%1",round(getDir _unit)]);
		
		//I have no idea why this works...
		

	};
};