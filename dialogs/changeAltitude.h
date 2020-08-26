#include "CustomControlClasses.h"
class changeAltitude
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
			x = safeZoneX + safeZoneW * 0.421875;
			y = safeZoneY + safeZoneH * 0.42037038;
			w = safeZoneW * 0.14635417;
			h = safeZoneH * 0.16018519;
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
			x = safeZoneX + safeZoneW * 0.421875;
			y = safeZoneY + safeZoneH * 0.42037038;
			w = safeZoneW * 0.14635417;
			h = safeZoneH * 0.01944445;
			style = 2;
			text = "Input New Altitude";
			colorBackground[] = {0.7961,0.9373,0.1176,0};
			colorText[] = {0,1,0,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Input
		{
			type = 2;
			idc = 500;
			x = safeZoneX + safeZoneW * 0.44635417;
			y = safeZoneY + safeZoneH * 0.47592593;
			w = safeZoneW * 0.06979167;
			h = safeZoneH * 0.02962963;
			style = 0;
			text = "";
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
			x = safeZoneX + safeZoneW * 0.51927084;
			y = safeZoneY + safeZoneH * 0.47222223;
			w = safeZoneW * 0.06041667;
			h = safeZoneH * 0.03796297;
			style = 0;
			text = "Meters";
			colorBackground[] = {0.7961,0.9373,0.1176,0};
			colorText[] = {0,1,0,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class OK
		{
			type = 1;
			idc = 1;
			x = safeZoneX + safeZoneW * 0.43945313;
			y = safeZoneY + safeZoneH * 0.53298612;
			w = safeZoneW * 0.0390625;
			h = safeZoneH * 0.01909723;
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
			onMouseButtonUp = "[] call fatLurch_fnc_altitudeDialogClose";
			
		};
		class Cancel
		{
			type = 1;
			idc = 2;
			x = safeZoneX + safeZoneW * 0.5078125;
			y = safeZoneY + safeZoneH * 0.53298612;
			w = safeZoneW * 0.0390625;
			h = safeZoneH * 0.01909723;
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
