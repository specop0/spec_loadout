waitUntil {!isNull player};
_parameterCorrect = params [["_x",objNull,[objNull]]];

//OPL: B_officer_F
_opl = "B_officer_F"; 
//TF: B_Soldier_TL_F
_tf = "B_Soldier_TL_F";
//Funker: B_Soldier_SL_F
_funker = "B_Soldier_SL_F";
//GL: B_Soldier_GL_F
_gl = "B_Soldier_GL_F";
//medic: B_medic_F
_medic = "B_medic_F";
//mg: B_soldier_AR_F
_mg = "B_soldier_AR_F";
//mg-assi: B_Soldier_A_F
_mgAssi = "B_Soldier_A_F";
//at: B_soldier_LAT_F
_at = "B_soldier_LAT_F";
//pio: B_engineer_F
_pio = "B_engineer_F";
//logistic: B_soldier_repair_F
_logistic = "B_soldier_repair_F";
//medevac: B_Soldier_lite_F
_medevac = "B_Soldier_lite_F";

//B_Soldier_F
//B_Helipilot_F
_pilot = "B_Helipilot_F";
//B_helicrew_F
//_coPilot = "B_helicrew_F";

if(_parameterCorrect) then {
	if(side _x == west) then {
		_type = typeOf _x;
		
		removeAllWeapons _x;
		removeAllItems _x;
		removeAllAssignedItems _x;
		removeUniform _x;
		removeVest _x;
		removeBackpack _x;
		removeHeadgear _x;
		removeGoggles _x;
		
		_x addVest "V_PlateCarrier1_rgr";
		_x forceAddUniform "U_B_CombatUniform_mcam";
		if(_type == _opl || _type == _funker || _type == _logistic || _type == _pilot) then {
			_x addBackpack "tf_rt1523g_big_rhs";
		} else {
			if(_type == _medevac || _type == _medic) then {
				_x addBackpack "B_Carryall_mcamo";
			} else {
				_x addBackpack "B_AssaultPack_mcamo";
			};
		};
		if(_type == _pilot) then {
			_x addHeadgear "H_HelmetCrew_0";
		} else {
			_x addHeadgear "H_HelmetB_grass";
		};
		_x addGoggles "BWA3_G_Combat_Clear";
		if(_type == _opl || _type == _tf) then {
			_x addWeapon "ACE_Vector";
		} else {
			if(_type == _at || _type == _mgAssi || _type == _gl) then{
				_x addWeapon "ACE_Yardage450";
			} else {
				_x addWeapon "Binocular";
			};
		};
		
		_x linkItem "ItemMap";
		_x linkItem "ItemCompass";
		_x linkItem "ItemWatch";
		_x linkItem "tf_anprc152";
		
		// lead equipment (tablet, etc)
		if(_type == _opl || _type == _tf || _type == _funker || _type == _logistic || _type == _medevac || _type == _pilot) then {
			_x addItemToUniform "ACE_microDAGR";
			if(_type == _opl) then {
				[_x,"ACE_DK10_b",2] call Spec_fnc_addItemToContainer;
			} else {
				[_x,"ACE_GD300_b",2] call Spec_fnc_addItemToContainer;
			};
		};
		if(_type == _opl || _type == _tf || _type == _logistic || _type == _pilot) then {
			[_x,"ACE_HelmetCam",0] call Spec_fnc_addItemToContainer;
		};
		if(_type == _opl || _type == _tf || _type == _funker) then {
			for "_i" from 1 to 3 do {[_x,"ACE_CableTie",1] call Spec_fnc_addItemToContainer;};
		};
		
		// standard equipment (ear plugs, grenades)
		[_x,"ACE_EarPlugs",0] call Spec_fnc_addItemToContainer;
		[_x,"ACE_MapTools",0] call Spec_fnc_addItemToContainer;
		
		for "_i" from 1 to 2 do {[_x,"ACE_IR_Strobe_Item",0] call Spec_fnc_addItemToContainer;};
		for "_i" from 1 to 2 do {[_x,"ACE_HandFlare_Green",0] call Spec_fnc_addItemToContainer;};

		for "_i" from 1 to 2 do {[_x,"SmokeShell",0] call Spec_fnc_addItemToContainer;};
		for "_i" from 1 to 2 do {[_x,"SmokeShellGreen",0] call Spec_fnc_addItemToContainer;};
		[_x,"SmokeShellPurple",0] call Spec_fnc_addItemToContainer;
		
		// night equipment
		[_x,"ACE_Flashlight_MX991",0] call Spec_fnc_addItemToContainer;
		[_x,"ACE_NVG_Wide",1] call Spec_fnc_addItemToContainer;
		
		for "_i" from 1 to 2 do {[_x,"ACE_M84",1] call Spec_fnc_addItemToContainer;};

		// medic equipment
		switch _type do {
			case _medic : {
				for "_i" from 1 to 10 do {[_x,"ACE_fieldDressing",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,"ACE_elasticBandage",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,"ACE_quikclot",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,"ACE_packingBandage",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,"ACE_tourniquet",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 4 do {[_x,"ACE_salineIV_500",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 5 do {[_x,"ACE_atropine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 8 do {[_x,"ACE_epinephrine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 8 do {[_x,"ACE_morphine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,"ACE_surgicalKit",2] call Spec_fnc_addItemToContainer;};
				_x setVariable ["ace_medical_medicClass", 1];
			};
			case _medevac : {
				for "_i" from 1 to 10 do {[_x,"ACE_fieldDressing",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,"ACE_elasticBandage",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,"ACE_quikclot",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,"ACE_packingBandage",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,"ACE_tourniquet",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,"ACE_salineIV",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 8 do {[_x,"ACE_atropine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 12 do {[_x,"ACE_epinephrine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 12 do {[_x,"ACE_morphine",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 5 do {[_x,"ACE_surgicalKit",2] call Spec_fnc_addItemToContainer;};
				[_x,"ACE_personalAidKit",2] call Spec_fnc_addItemToContainer;
				_x setVariable ["ace_medical_medicClass", 2];
			};
			default {
				for "_i" from 1 to 7 do {[_x,"ACE_fieldDressing",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,"ACE_tourniquet",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 1 do {[_x,"ACE_morphine",2] call Spec_fnc_addItemToContainer;};
			};
		};
		
		// role specific special equipment
		switch _type do {
			case _tf : {
				for "_i" from 1 to 6 do {[_x,"1Rnd_Smoke_Grenade_shell",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,"1Rnd_SmokeRed_Grenade_shell",2] call Spec_fnc_addItemToContainer;};
			};
			case _gl : {
				for "_i" from 1 to 12 do {[_x,"1Rnd_HE_Grenade_shell",2] call Spec_fnc_addItemToContainer;};
			};
			case _pio : {
				_x addItemToBackpack "ToolKit";
				for "_i" from 1 to 2 do {[_x,"DemoCharge_Remote_Mag",2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,"SLAMDirectionalMine_Wire_Mag",3] call Spec_fnc_addItemToContainer;};
				[_x,"ACE_M26_Clacker",2] call Spec_fnc_addItemToContainer;
				[_x,"ACE_Clacker",2] call Spec_fnc_addItemToContainer;
				[_x,"ACE_DefusalKit",2] call Spec_fnc_addItemToContainer;
				_x setVariable ["ACE_IsEngineer", 2];
			};
			case _logistic : {
				[_x,"ToolKit",2] call Spec_fnc_addItemToContainer;
				_x setVariable ["ACE_IsEngineer", 2];
			};
			case _mg : {
				[_x,"ACE_SpareBarrel",2] call Spec_fnc_addItemToContainer;
			};
			case _mgAssi : {
				for "_i" from 1 to 2 do {[_x,"BWA3_120Rnd_762x51",2] call Spec_fnc_addItemToContainer;};
			};
		};
		
		// ===========================================
		// ==============  Weapons  ==================
		// ===========================================
		
		// MG (change 'case _mgAssi :' ammunition above)
		if(_type == _mg) then {
			for "_i" from 1 to 2 do {[_x,"BWA3_120Rnd_762x51",1] call Spec_fnc_addItemToContainer;};
			for "_i" from 1 to 3 do {[_x,"11Rnd_45ACP_Mag",1] call Spec_fnc_addItemToContainer;};
			[_x,"BWA3_120Rnd_762x51",2] call Spec_fnc_addItemToContainer;

			_x addWeapon "BWA3_MG5";
			_x addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
			_x addPrimaryWeaponItem "BWA3_optic_ZO4x30";
			_x addItemToUniform "BWA3_optic_NSV600";
			_x addWeapon "hgun_Pistol_heavy_01_snds_F";
			_x addHandgunItem "muzzle_snds_acp";
		} else {
			// grenade launcher
			if(_type == _tf || _type == _gl) then {
				for "_i" from 1 to 6 do {[_x,"BWA3_30Rnd_556x45_G36_AP",2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "BWA3_G36_equipped";
				for "_i" from 1 to 3 do {[_x,"11Rnd_45ACP_Mag",1] call Spec_fnc_addItemToContainer;};

				_x addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
				_x addPrimaryWeaponItem "BWA3_optic_ZO4x30";
				_x addWeapon "hgun_Pistol_heavy_01_snds_F";
				_x addHandgunItem "muzzle_snds_acp";
				_x addItemToUniform "BWA3_optic_NSV600";
			} else {
				// pilot
				if(_type == _pilot) then {
					for "_i" from 1 to 2 do {[_x,"rhsusf_100Rnd_762x51_m80a1epr",1] call Spec_fnc_addItemToContainer;};
					_x addWeapon "hlc_lmg_M60E4";
					for "_i" from 1 to 3 do {[_x,"rhsusf_mag_7x45acp_MHP",1] call Spec_fnc_addItemToContainer;};
					[_x,"rhsusf_100Rnd_762x51_m80a1epr",2] call Spec_fnc_addItemToContainer;

					_x addPrimaryWeaponItem "optic_MRCO";
					_x addWeapon "rhsusf_weap_m1911a1";
				} else {
					// Standard Weapon
					for "_i" from 1 to 6 do {[_x,"rhs_mag_30Rnd_556x45_Mk318_Stanag",1] call Spec_fnc_addItemToContainer;};
					for "_i" from 1 to 3 do { call Spec_fnc_addItemToContainer;};

					_x addWeapon "rhs_m4a1_grip_acog3_usmc";
					_x addPrimaryWeaponItem "rhsusf_acc_anpeq15";
					_x addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
					_x addWeapon "rhsusf_weap_m1911a1";
					_x addItemToUniform "rhsusf_acc_eotech_552";
				};
			};
		};
	};
};