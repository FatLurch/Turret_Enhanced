/*
	Written 2019-02-03 by Erik Kofahl
	Last Edited 2019-02-04 - Adding more CBA options
	2019-11-30 - Adding Azimuth and Elevation indicators
*/

//diag_log "===FAT_LURCH DEDUG: XEH_preInit.sqf called===";

[
    "Fat_Lurch_ShowNorth", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Show North", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        //params ["_value"];
        //setViewDistance _value;
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_ShowAz", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Show Azimuth", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        //params ["_value"];
        //setViewDistance _value;
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_ShowEl", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Show Elevation", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        //params ["_value"];
        //setViewDistance _value;
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_ShowTarget", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Show Target Grid", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_MapSlew", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Allow Map Slew", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_Markers", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Allow Markers", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_Grid", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Allow Slew to Grid", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_Measure", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Allow Measuring", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "Fat_Lurch_GridNum", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type. CHECKBOX, EDITBOX, SLIDER, LIST or COLOR
    "Target Grid Digits", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Turret Enhanced", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [[6,8,10],["6 Digit", "8 Digit", "10 Digit"],0 ], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;