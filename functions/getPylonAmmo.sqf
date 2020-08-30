params["_uav"];

myMagazines = getPylonMagazines (_uav);
ammoNameArray = [];
ammoCountArray = [];

//===== BUILD ARRAYS CONTAINING AMMO NAME & COUNT PER PYLON
{
	_var = configname(configfile >> "CfgVehicles" >> typeOf _uav >> "Components" >> "TransportPylonsComponent" >> "pylons" >> configname _x);
	_ammo = _uav ammoOnPylon _var;
	//_ammoName =  getText(configfile >> "CfgMagazines" >> myMagazines select _forEachIndex>> "displayNameShort");
	
	_weaponName =  getText(configfile >> "CfgMagazines" >> myMagazines select _forEachIndex>> "pylonWeapon");
	_ammoName = getText(configfile >> "CfgWeapons" >> _weaponName>> "displayName");
	
	ammoNameArray pushback _ammoName;
	ammoCountArray pushback _ammo;
}forEach configProperties[configfile >> "CfgVehicles" >> typeOf _uav >> "Components" >> "TransportPylonsComponent" >> "pylons"];

//===== SUM THE AMMO COUNTS PER TYPE
finalNameArray = [];	
finalAmmoArray = [];
{
	tmpName = _x;
	rootIndex = _forEachIndex;

	if(!(_x in finalNameArray)) then 
	{	
		finalNameArray pushback tmpName;
		finalAmmoArray pushback (ammoCountArray select _forEachIndex);
	}
	else
	{
		{
			if(tmpName == _X) then
			{
				finalAmmoArray set[_forEachIndex, (finalAmmoArray select _forEachIndex) + (ammoCountArray select rootIndex)];
			};
		}forEach finalNameArray;	
	};
}
forEach ammoNameArray;

//======== PREPARE FORMATTED STRING WITH PLYLON AMMO INFO
_text = "";
_tmpIndex = 0;

{
	_text = _text + str(finalAmmoArray select _tmpIndex) + "x " + (finalNameArray select _tmpIndex);
	
	if(count finalNameArray  > _tmpIndex+1) then 
	{
		_text = _text + ", ";
	};
	
	_tmpIndex = _tmpIndex+1;
} forEach finalNameArray;


//===== COUNT HOW MANY ROUNDS OF ANY TYPE ARE ON THE VEHICLE
_totalAmmo = 0;
{
	_totalAmmo = _totalAmmo + _x;
}forEach finalAmmoArray;

//===== IF THERE ARE NO ROUNDS OF ANY TYPE, REPORT WINCHESTER
if(_totalAmmo ==0) then {_text = "Winchester"};

_output = [finalAmmoArray, finalNameArray, _text];

_output;