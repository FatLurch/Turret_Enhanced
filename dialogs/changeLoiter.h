#include "CustomControlClasses.h"
class changeLoiter
{
	idd = -1;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.43177084;
			y = safeZoneY + safeZoneH * 0.45740741;
			w = safeZoneW * 0.13645834;
			h = safeZoneH * 0.12314815;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.8};
			colorText[] = {0.3059,0.6078,0.7412,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Label
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.43177084;
			y = safeZoneY + safeZoneH * 0.45740741;
			w = safeZoneW * 0.13645834;
			h = safeZoneH * 0.01944445;
			style = 2;
			text = "Input New Loiter Radius";
			colorBackground[] = {0.7961,0.9373,0.1176,0};
			colorText[] = {0,1,0,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.1);
			
		};
		class Input
		{
			type = 2;
			idc = 500;
			x = safeZoneX + safeZoneW * 0.44635417;
			y = safeZoneY + safeZoneH * 0.49722223;
			w = safeZoneW * 0.03020834;
			h = safeZoneH * 0.02962963;
			style = 0;
			text = "1000";
			autocomplete = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {0,1,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Label_Meters
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.4796875;
			y = safeZoneY + safeZoneH * 0.49074075;
			w = safeZoneW * 0.08020834;
			h = safeZoneH * 0.03796297;
			style = 0;
			text = "Loiter Radius (m)";
			colorBackground[] = {0.7961,0.9373,0.1176,0};
			colorText[] = {0,1,0,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			tooltip = "The vehicle will attempt to maintain this altitude in meters Above Sea Level";
			
		};
		class OK
		{
			type = 1;
			idc = 1;
			x = safeZoneX + safeZoneW * 0.44947917;
			y = safeZoneY + safeZoneH * 0.5425926;
			w = safeZoneW * 0.0390625;
			h = safeZoneH * 0.02870371;
			style = 0+2;
			text = "OK";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0,1,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onMouseButtonUp = "[] call fatLurch_fnc_loiterDialogClose";
			
		};
		class Cancel
		{
			type = 1;
			idc = 2;
			x = safeZoneX + safeZoneW * 0.5078125;
			y = safeZoneY + safeZoneH * 0.5425926;
			w = safeZoneW * 0.0390625;
			h = safeZoneH * 0.02870371;
			style = 0+2;
			text = "Cancel";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0,1,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
