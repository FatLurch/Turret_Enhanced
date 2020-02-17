/*
	Last edited 2019-02-03 by Erik Kofahl for TSOG
	2019-02-03 - Adding CBA settings interface to turn off GUI + CBA XEH to init 
	2019-02-03 - Adding CBA Keybinds
	2019-02-14 - Moving displayed coordinates so they fit in the RHS A-10 "TV" in 10 digit mode
	2019-11-30 - Adding Azimuth and Elevation Indicators
*/



class CfgPatches
{
	class UAV_Turret_Markers
	{
		units[] = {"Helicopter", "UAV"};
		weapons[] = {};
		requiredVersion = 1.8;
		requiredAddons[] = {"A3_Data_F_Sams_LoadOrder","cba_main"};
		version = "0.1";
		author = "Fat_Lurch";
	};
};

class Extended_PreInit_EventHandlers 
{
    class My_pre_init_event 
	{
        init = "call compile preprocessFileLineNumbers 'Turret_Enhanced\XEH_preInit.sqf'";
    };
};



class CfgFunctions
{
	class fatLurch
	{
		class Lurch_Functions2
		{
			class MPaddaction
			{
				file = "Turret_Enhanced\functions\MPaddaction.sqf";
			};
			
			class North_Ind
			{
				file = "Turret_Enhanced\functions\North_Ind.sqf";
			};
			

			class isViewISR
			{
				file = "Turret_Enhanced\functions\isViewISR.sqf";
			};
			
			class addMarkerBlk
			{
				file = "Turret_Enhanced\functions\createMarkerBlack.sqf";
			};
			class addMarkerBlu
			{
				file = "Turret_Enhanced\functions\createMarkerBlue.sqf";
			};
			class addMarkerRed
			{
				file = "Turret_Enhanced\functions\createMarkerRed.sqf";
			};
			class turretAzEl
			{
				file = "Turret_Enhanced\functions\turretAzEl.sqf";
			};

		
		};
	};
};

class Extended_Init_EventHandlers 
{
	class air;
    class plane:air 
	{
        class Fat_Lurch_plane_eh
		{
            init = "(_this select 0) spawn fatLurch_fnc_MPaddaction";
        };
    };
	
	class Helicopter:air 
	{
        class Fat_Lurch_Helicopter_eh
		{
            init = "(_this select 0) spawn fatLurch_fnc_MPaddaction";
        };
    };
	
};

class RscTitles
{
	class North
	{    
		idd = 710;
		fadein = 0;
		fadeout = 0;
		duration = .1;
		//onLoad = "_this call onRscLoad"; //UI event handler
		//onLoad = "uiNameSpace setVariable ['myUI_LevelTitle', (_this select 0) displayCtrl 654];";
		onLoad = "uiNameSpace setVariable ['myUI_LevelTitle', (_this select 0) displayCtrl 654];";
		class controls
		{
			class ExampleControl
			{    
				idc = 709;
				type = 0;	//Keep this (single line text)
				style = 2;	//-2 is center aligned text			
				x = "uiNamespace getVariable 'newPosition' select 0"; 
				y = "uiNamespace getVariable 'newPosition' select 1";
				w = 1;
				h = 1;
				font = "EtelkaNarrowMediumPro";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text = "N";
			};  
			
			class ExampleControl654
			{    
				idc = 654;
				type = 0;
				style = 0;
				x = .845; 	//Was 0.9. Updated to fit in RHS A-10 display
				y = .6;
				w = 1;
				h = 1;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				//text = "uiNamespace getVariable 'newPosition' select 2";
				text="";
			};  
		};
	};
	class El
	{ 
		//Series of elevation controls relating to the vehicle turret. Controlled by CBA setting Fat_Lurch_ShowEl in CBA
		idd = 709;
		fadein = 0;
		fadeout = 0;
		duration = .1;
		//onLoad = "_this call onRscLoad"; //UI event handler
		//onLoad = "uiNameSpace setVariable ['myUI_LevelTitle', (_this select 0) displayCtrl 654];";
		onLoad = "uiNameSpace setVariable ['guiEl', (_this select 0) displayCtrl 655];";
		class controls
		{
			class elControl655
			{    
				//Moving Elevation indicator
				idc = 655;
				type = 0;
				style = ST_CENTER;
				x = -0.1; 	
				y = "uiNamespace getVariable 'guiElPos'"; 	//calculated in North_Ind.sqf
				//y = 0;//0 = CL, - above CL, + below CL?
				w = 1;
				h = 1;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="";
			};  
			class elevation
			{    
				//Static Elevation scale image
				idc = 660;
				type = 0;
				style=2096;
				x = -0.32; 	
				y = 0.35; //Updated from 0.25 to attempt to work better with USAF MQ-9
				w = 0.7;
				h = 0.55;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="Turret_Enhanced\images\Elevation.paa";
			};
		};
	};
	class Az
	{    
		//Series of Azimuth controls relating to the vehicle turret. Controlled by CBA setting Fat_Lurch_ShowAz in CBA
		idd = 708;
		fadein = 0;
		fadeout = 0;
		duration = .1;
		//onLoad = "_this call onRscLoad"; //UI event handler
		//onLoad = "uiNameSpace setVariable ['myUI_LevelTitle', (_this select 0) displayCtrl 654];";
		onLoad = "uiNameSpace setVariable ['guiAz', (_this select 0) displayCtrl 656]; uiNameSpace setVariable ['guiHdg', (_this select 0) displayCtrl 657];";
		class controls
		{
				//Shit goes here
			class azControl656
			{    
				//Moving Az indicator for turret (-180 (Full left) to 180 (Full right)
				idc = 656;
				type = 0;
				style = 2;
				x = "uiNamespace getVariable 'guiAzPos'"; 
				y = -0.46;//0 = CL, - above CL, + below CL?
				w = 0.1;
				h = 1;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="";
			};  
			class headingControl657
			{    
				//Current Vehicle Heading. Static, centered above compass 
				idc = 657;
				type = 0;
				style=162;
				x = 0.46; 	//(0.5 = center - Width of control (0.08))
				y = -0.09;//0 = CL, - above CL, + below CL?
				w = 0.08;
				h = 0.05;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="";
			};
			class compass
			{    
				//Static Compass image
				idc = 658;
				type = 0;
				style=2096;
				x = 0.35; 	
				y = -0.125;//0 = CL, - above CL, + below CL?
				w = .3;
				h = .2;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="Turret_Enhanced\images\Compass.paa";
			};
			class compassArrow
			{
				//Moving Compass arrow that follows the Az indicator 
				idc = 659;
				type = 0;
				style=2096;
				x = "(uiNamespace getVariable 'guiAzPos')+0.0375"; 
				y = -0.005;//0 = CL, - above CL, + below CL?
				w = .025;
				h = .025;
				font = "RobotoCondensedLight";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text="Turret_Enhanced\images\CompassArrow.paa";
			};
		};
	};
};
class inputCoords
{
	idd = 585;
	fadein = 0;
	fadeout = 0;
	duration = 1e11;
	//onUnload = "uiNamespace setVariable [""someDialog"", nil];";
	onUnload = "uiNamespace setVariable [""coordReturn"", (_this select 1)];";
	
	class controls
	{
		class RscText
		{
			idc = 1000;
			type=0;
			style=16;
			text = "Input Target Grid"; //--- ToDo: Localize;
			x = 0.446146 * safezoneW + safezoneX;
			y = 0.649667 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			font = "PuristaMedium";
			lineSpacing=1;
			sizeEx = 0.03;
			colorSelection[] = {-1,-1,-1,-1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {-1,-1,-1,-1}; 
			colorBackground[] = {0,0,0,0.7};
		};
		class RscEdit
		{
			idc = 1400;
			maxChars=10;
			//forceDrawCaret = true;
			type = 2;
			style=16;
			x = 0.446374 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			font = "PuristaMedium";
			autoComplete="";
			sizeEx = 0.03;
			colorSelection[] = {-1,-1,-1,-1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {-1,-1,-1,-1}; 
			colorBackground[] = {0,0,0,0.7};
			text="";
		};
		class RscButton
		{
			idc = 1600;
			type=1;
			style=16;
			action="closeDialog 1;_ctrl=(findDisplay 585) displayCtrl 1400;coords = ctrlText _ctrl;_ctrl ctrlSetText '';";
			text = "ENTER"; //--- ToDo: Localize;
			x = 0.517532 * safezoneW + safezoneX;
			y = 0.6496 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.044 * safezoneH;
			font = "PuristaMedium";
			sizeEx = 0.03;
			colorSelection[] = {-1,-1,-1,-1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {-1,-1,-1,-1}; 
			colorBackground[] = {0,0,0,0.7};
			soundEnter[] = {"",0.1,1};
			soundPush[] = {"",0.1,1};
			soundClick[] = {"",0.1,1};
			soundEscape[] = {"",0.1,1};
			colorBackgroundDisabled[] = {0.6,0.6,0.6,1};
			colorBackgroundActive[] = {1,0.5,0,1};
			colorFocused[] = {0,0,0,1};
			colorShadow[] = {0,0,0,1};
			offsetX = 0.004;
			offsetY = 0.004;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			borderSize = 0.008;
			colorBorder[] = {0,0,0,1};
			tooltip="Enter on numpad to commit. Escape key to cancel";
		};
		
	};
};