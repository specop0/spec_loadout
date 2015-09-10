{
	if(side _x == west) then {		
		switch (typeOf _x) do {
			comment "OPL";
			case ("O_officer_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "tf_mr3000";

				_x addWeapon "Rangefinder";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";
				_x linkItem "ItemGPS";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";

				for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
				for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
			};
			comment "TeamLeader #1";
			case ("O_Soldier_TL_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "B_FieldPack_ocamo";

				_x addWeapon "Rangefinder";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";
				_x linkItem "ItemGPS";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_Keycuffs";};

				for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
				for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
				for "_i" from 1 to 5 do {_x addItemToBackpack "1Rnd_HE_Grenade_shell";};
			};
			comment "Grenadier #2";
			case ("O_Soldier_GL_F"):{
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "tf_mr3000";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";
				_x linkItem "ItemGPS";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";

				for "_i" from 1 to 2 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
				for "_i" from 1 to 2 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
				for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_HE_Grenade_shell";};
			};
			comment "CombatMedic #3";
			case("O_medic_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "B_FieldPack_ocamo";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 8 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 15 do {_x addItemToBackpack "cse_bandageElastic";};
				for "_i" from 1 to 12 do {_x addItemToBackpack "cse_quikclot";};
				for "_i" from 1 to 6 do {_x addItemToBackpack "cse_packing_bandage";};
				for "_i" from 1 to 4 do {_x addItemToBackpack "cse_tourniquet";};
				for "_i" from 1 to 12 do {_x addItemToBackpack "cse_saline_iv_500";};
				for "_i" from 1 to 5 do {_x addItemToBackpack "cse_atropine";};
				for "_i" from 1 to 10 do {_x addItemToBackpack "cse_epinephrine";};
				for "_i" from 1 to 20 do {_x addItemToBackpack "cse_morphine";};
				_x addItemToBackpack "cse_surgical_kit";
			};
			comment "MG #3,#4";
			case ("O_Soldier_AR_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "B_FieldPack_ocamo";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";

				for "_i" from 1 to 3 do {_x addItemToBackpack "150Rnd_762x54_Box";};
				_x addWeapon "LMG_Zafir_ARCO_F";
				_x addPrimaryWeaponItem "acc_pointer_IR";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";
			};
			comment "AT #5,#6";
			case ("O_Soldier_LAT_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "B_FieldPack_ocamo";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";

				for "_i" from 1 to 2 do {_x addItemToBackpack "RPG32_F";};
				_x addWeapon "launch_RPG32_F";
			};
			comment "pioner #5,#6 (explosive, repair)";
			case ("O_engineer_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "B_FieldPack_ocamo";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				comment "uniform full";
				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";

				_x addItemToBackpack "ToolKit";
				for "_i" from 1 to 3 do {_x addItemToBackpack "DemoCharge_Remote_Mag";};
			};
			comment "Logistic Repair Specialist";
			case ("O_soldier_repair_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "tf_mr3000";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";
				_x linkItem "ItemGPS";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 7 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 3 do {_x addItemToBackpack "cse_packing_bandage";};
				_x addItemToBackpack "cse_tourniquet";
				
				_x addItemToBackpack "ToolKit";
			};
			comment "MedEvac aka Light Rifleman";
			case ("O_Soldier_lite_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x addHeadgear "H_HelmetLeaderO_ocamo";
				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "tf_mr3000";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";
				_x linkItem "ItemGPS";

				for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
				for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
				_x addItemToUniform "SmokeShellPurple";

				for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_mk84";};
				for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

				for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

				for "_i" from 1 to 10 do {_x addItemToBackpack "cse_bandage_basic";};
				for "_i" from 1 to 15 do {_x addItemToBackpack "cse_bandageElastic";};
				for "_i" from 1 to 12 do {_x addItemToBackpack "cse_quikclot";};
				for "_i" from 1 to 10 do {_x addItemToBackpack "cse_packing_bandage";};
				for "_i" from 1 to 4 do {_x addItemToBackpack "cse_tourniquet";};
				for "_i" from 1 to 15 do {_x addItemToBackpack "cse_saline_iv";};
				for "_i" from 1 to 5 do {_x addItemToBackpack "cse_atropine";};
				for "_i" from 1 to 15 do {_x addItemToBackpack "cse_epinephrine";};
				for "_i" from 1 to 25 do {_x addItemToBackpack "cse_morphine";};
				_x addItemToBackpack "cse_personal_aid_kit";
				_x addItemToBackpack "cse_surgical_kit";
			};
			default {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;
			};
		};
		comment "some player miss loadout";
		if(!isNil "spec") then {
			if(_x == spec) then {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;
				
				_x forceAddUniform "U_O_CombatUniform_ocamo";

				_x linkItem "ItemMap";
			};
		};
	} else {
		_x removeMagazines "1Rnd_HE_Grenade_shell";
	};
} foreach  allunits;  