local _uniform = "U_B_CombatUniform_mcam";
local _vest = "V_PlateCarrier1_rgr";

local _backpack = "B_AssaultPack_mcamo";
local _backpackBig = "B_Carryall_mcamo";
local _backpackLR = "tf_rt1523g_big_rhs";

local _headgear = "H_HelmetB_grass";
local _headgearPilot = "H_HelmetCrew_0";
local _googles = "BWA3_G_Combat_Clear";

local _standardWeapon = "rhs_m4a1_grip_acog3_usmc";
local _standardAmmo = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
local _standardAccessory = ["rhsusf_acc_anpeq15","rhsusf_acc_ACOG3_USMC"];
local _standardAccessoryExtra = ["rhsusf_acc_eotech_552"];

local _grenadeLauncherWeapon = "BWA3_G36_equipped";
local _grenadeLauncherAmmo = "BWA3_30Rnd_556x45_G36_AP";
local _grenadeLauncherAccessory = ["BWA3_acc_LLM01_irlaser","BWA3_optic_ZO4x30"];
local _grenadeLauncherAccessoryExtra = ["BWA3_optic_NSV600"];

local _secondaryWeapon = "hgun_Pistol_heavy_01_snds_F";
local _secondaryAmmo = "11Rnd_45ACP_Mag";
local _secondaryAccessory = ["muzzle_snds_acp"];

comment "Officer";
local _oplClass = "B_officer_F"; 
comment "Squad Leader";
local _funkerClass = "B_Soldier_SL_F";
comment "Combat Life Saver";
local _medicClass = "B_medicClass_F";

comment "Team Leader";
local _tfClass = "B_Soldier_TL_F";
comment "Grenadier";
local _glClass = "B_Soldier_glClass_F";

comment "Autorifleman";
local _mgClass = "B_soldier_AR_F";
local _mgWeapon = "BWA3_mg5";
local _mgAmmo = "BWA3_120Rnd_762x51";
local _mgAccessory = ["BWA3_acc_LLM01_irlaser","BWA3_optic_ZO4x30"];
local _mgAccessoryExtra = ["BWA3_optic_NSV600"];
comment "Ammo Bearer";
local _mgAssiClass = "B_Soldier_A_F";

comment "Helicopter Crew";
local _lmgClass = "B_helicrew_F";
local _lmgWeapon = "BWA3_MG4";
local _lmgAmmo = "BWA3_200Rnd_556x45_Tracer";
local _lmgAccessory = ["optic_MRCO"];
local _lmgAccessoryExtra = [];

comment "Rifleman (AT)";
local _atClass = "B_soldier_LAT_F";
local _atWeapon = "rhs_weap_m136";

comment "Engineer";
local _pioClass = "B_engineer_F";
comment "Repair Specialist";
local _logisticClass = "B_soldier_repair_F";
comment "Rifleman (Light)";
local _medevacClass = "B_Soldier_lite_F";
comment "Helicopter Pilot";
local _pilotClass = "B_Helipilot_F";

comment "classes to use: B_Soldier_F (Rifleman), B_pilotClass_F (Pilot), B_helicrew_F (Helicopter Crew)";

{
	_units = _x;
	if(side _unit == west) then {
		local _type = typeOf _unit;
		
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;
		
		comment "Vest, Uniform, Backpack, Headgear (, Googgles)";
		_unit forceAddUniform _uniform;
		_unit addVest _vest;
		if(_type == _oplClass || _type == _funkerClass || _type == _logisticClass || _type == _pilotClass) then {
			_unit addBackpack _backpackLR;
		} else {
			if(_type == _medevacClass || _type == _medicClass) then {
				_unit addBackpack _backpackBig;
			} else {
				_unit addBackpack _backpack;
			};
		};
		if(_type == _pilotClass) then {
			_unit addHeadgear _headgearPilot;
		} else {
			_unit addHeadgear _headgear;
		};
		_unit addGoggles _googles;
		
		comment "Loadout based on TTT-Mod (weapons near end of file)";
		if(_type == _oplClass || _type == _tfClass) then {
			_unit addWeapon "ACE_Vector";
		} else {
			if(_type == _atClass || _type == _mgAssiClass || _type == _glClass) then{
				_unit addWeapon "ACE_Yardage450";
			} else {
				_unit addWeapon "Binocular";
			};
		};
		
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "tf_anprc152";
		
		comment "lead equipment (tablet, etc)";
		if(_type == _oplClass || _type == _tfClass || _type == _funkerClass || _type == _logisticClass || _type == _medevacClass || _type == _pilotClass) then {
			_unit addItemToUniform "ACE_microDAGR";
			if(_type == _oplClass) then {
				[_unit,"ACE_DK10_b",2] call Spec_fnc_addItemToContainer;
			} else {
				[_unit,"ACE_GD300_b",2] call Spec_fnc_addItemToContainer;
			};
		};
		if(_type == _oplClass || _type == _tfClass || _type == _logisticClass || _type == _pilotClass) then {
			//[_unit,"ACE_HelmetCam",0] call Spec_fnc_addItemToContainer;
		};
		if(_type == _oplClass || _type == _tfClass || _type == _funkerClass) then {
			[_unit,"ACE_CableTie",1, 3] call Spec_fnc_addItemToContainer;
		};
		
		comment "standard equipment (ear plugs, grenades)";
		[_unit,"ACE_EarPlugs",0] call Spec_fnc_addItemToContainer;
		[_unit,"ACE_MapTools",0] call Spec_fnc_addItemToContainer;
		
		[_unit,"ACE_IR_Strobe_Item",0,2] call Spec_fnc_addItemToContainer;
		[_unit,"ACE_HandFlare_Green",0,2] call Spec_fnc_addItemToContainer;

		[_unit,"SmokeShell",0,2] call Spec_fnc_addItemToContainer;
		[_unit,"SmokeShellGreen",0, 2] call Spec_fnc_addItemToContainer;
		[_unit,"SmokeShellPurple",0] call Spec_fnc_addItemToContainer;
		
		comment "night equipment";
		[_unit,"ACE_Flashlight_MX991",0] call Spec_fnc_addItemToContainer;
		[_unit,"ACE_NVG_Wide",1] call Spec_fnc_addItemToContainer;
		
		[_unit,"ACE_M84",1, 2] call Spec_fnc_addItemToContainer;

		comment "medic equipment";
		switch _type do {
			case _medicClass : {
				[_unit,"ACE_fieldDressing",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_elasticBandage",2, 15] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_quikclot",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_packingBandage",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_tourniquet",2, 3] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_salineIV_500",2, 4] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_atropine",2, 5] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_epinephrine",2, 8] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_morphine",2, 8] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_surgicalKit",2, 3] call Spec_fnc_addItemToContainer;
				_unit setVariable ["ace_medical_medicClass", 1];
			};
			case _medevacClass : {
				[_unit,"ACE_fieldDressing",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_elasticBandage",2, 15] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_quikclot",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_packingBandage",2, 10] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_tourniquet",2, 2] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_salineIV",2, 6] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_atropine",2, 8] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_epinephrine",2, 12] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_morphine",2, 12] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_surgicalKit",2, 5] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_personalAidKit",2] call Spec_fnc_addItemToContainer;
				_unit setVariable ["ace_medical_medicClass", 2];
			};
			default {
				[_unit,"ACE_fieldDressing",2, 7] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_tourniquet",2, 2] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_morphine",2, 1] call Spec_fnc_addItemToContainer;
			};
		};
		
		comment "role specific special equipment";
		switch _type do {
			case _tfClass : {
				[_unit,"1Rnd_Smoke_Grenade_shell",2, 6] call Spec_fnc_addItemToContainer;
				[_unit,"1Rnd_SmokeRed_Grenade_shell",2, 6] call Spec_fnc_addItemToContainer;
			};
			case _glClass : {
				[_unit,"1Rnd_HE_Grenade_shell",2, 12] call Spec_fnc_addItemToContainer;
			};
			case _pioClass : {
				[_unit,"ToolKit",2] call Spec_fnc_addItemToContainer;
				[_unit,"DemoCharge_Remote_Mag",2, 2] call Spec_fnc_addItemToContainer;
				[_unit,"SLAMDirectionalMine_Wire_Mag",3, 2] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_M26_Clacker",2] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_Clacker",2] call Spec_fnc_addItemToContainer;
				[_unit,"ACE_DefusalKit",2] call Spec_fnc_addItemToContainer;
				_unit setVariable ["ACE_IsEngineer", 2];
			};
			case _logisticClass : {
				[_unit,"ToolKit",2] call Spec_fnc_addItemToContainer;
				_unit setVariable ["ACE_IsEngineer", 2];
			};
			case _mgClass : {
				[_unit,"ACE_SpareBarrel",2] call Spec_fnc_addItemToContainer;
			};
			case _mgAssiClass : {
				[_unit,_mgAmmo,2, 2] call Spec_fnc_addItemToContainer;
			};
		};
		
		comment "===========================================";
		comment "==============  Weapons  ==================";
		comment "===========================================";
		
		if(_type == _mgClass) then {
			[_unit,_mgAmmo,1, 2] call Spec_fnc_addItemToContainer;
			[_unit,_mgAmmo,2] call Spec_fnc_addItemToContainer;
			_unit addWeapon _mgWeapon;
			{
				_unit addPrimaryWeaponItem _x;
			} forEach _mgAccessory;
			{
				[_unit,_x,3] call Spec_fnc_addItemToContainer;
			} forEach _mgAccessoryExtra;	
		} else {
			if(_type == _lmgClass) then {
				[_unit,_lmgAmmo,1] call Spec_fnc_addItemToContainer;
				[_unit,_lmgAmmo,2, 3] call Spec_fnc_addItemToContainer;
				
				_unit addWeapon _lmgWeapon;
				{
					_unit addPrimaryWeaponItem _x;
				} forEach _lmgAccessory;
				{
					[_unit,_x,3] call Spec_fnc_addItemToContainer;
				} forEach _lmgAccessoryExtra;				
			} else {
				comment "grenade launcher";
				if(_type == _tfClass || _type == _glClass) then {
					[_unit,_grenadeLauncherAmmo,2, 6] call Spec_fnc_addItemToContainer;
					
					_unit addWeapon _grenadeLauncherWeapon;
					{
						_unit addPrimaryWeaponItem _x;
					} forEach _grenadeLauncherAccessory;
					{
						[_unit,_x,3] call Spec_fnc_addItemToContainer;
					} forEach _grenadeLauncherAccessoryExtra;
				} else {
					comment "AT launcher";
					if(_type == _atClass) then {
						_unit addWeapon _atWeapon;
					};
					comment "standard weapon";
					[_unit,_standardAmmo,1, 6] call Spec_fnc_addItemToContainer;

					_unit addWeapon _standardWeapon;
					{
						_unit addPrimaryWeaponItem _x;
					} forEach _standardAccessory;
					{
						[_unit,_x,3] call Spec_fnc_addItemToContainer;
					} forEach _standardAccessoryExtra;
				};
			};
		};
		comment "secondary weapon";
		[_unit,_secondaryAmmo,1, 3] call Spec_fnc_addItemToContainer;
		_unit addWeapon _secondaryWeapon;
		{
			_unit addSecondaryWeaponItem _x;
		} forEach _secondaryAccessory;
	};
} forEach allUnits;