waitUntil {!isNull player};
_parameterCorrect = params [["_x",objNull,[objNull]]];

if(_parameterCorrect) then {
	if(side _x == west) then {
			switch (typeOf _x) do {
			comment "Officer - OPL";
			case ("B_officer_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 6 do {[_x,  "1Rnd_Smoke_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "1Rnd_SmokeRed_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_microDAGR", 0] call Spec_fnc_addItemToContainer;
			};
			comment "TeamLeader - #1";
			case ("B_Soldier_TL_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				for "_i" from 1 to 3 do {[_x,  "ACE_CableTie", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 6 do {[_x,  "1Rnd_Smoke_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "1Rnd_SmokeRed_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 5 do {[_x,  "1Rnd_HE_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_microDAGR", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Grenadier - #2 inkl 40mm";
			case ("B_Soldier_GL_F"):{
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "1Rnd_Smoke_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "1Rnd_SmokeRed_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "1Rnd_HE_Grenade_shell", 2] call Spec_fnc_addItemToContainer;};
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_microDAGR", 0] call Spec_fnc_addItemToContainer;
			};
			comment "CombatLifeSaver - Medic #3";
			case("B_medic_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 8 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,  "ACE_elasticBandage", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 12 do {[_x,  "ACE_quikclot", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 4 do {[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 12 do {[_x,  "ACE_salineIV_500", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 5 do {[_x,  "ACE_atropine", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,  "ACE_epinephrine", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 20 do {[_x,  "ACE_morphine", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_surgicalKit", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				
				_x setVariable ["ace_medical_medicClass", 1];
			};
			comment "Autorifleman - MG #3,#4";
			case ("B_soldier_AR_F"): {
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

				for "_i" from 1 to 3 do {[_x,  "150Rnd_762x54_Box", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "LMG_Zafir_ARCO_F";
				_x addPrimaryWeaponItem "acc_pointer_IR";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "AmmoBearer - MG-Assi";
			case ("B_Soldier_A_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				comment "uniform full";
				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				for "_i" from 1 to 2 do {[_x,  "150Rnd_762x54_Box", 2] call Spec_fnc_addItemToContainer;};
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Rifleman AT - AT-Schuetze #5,#6";
			case ("B_soldier_LAT_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "RPG32_F", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "launch_RPG32_F";
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Engineer - Pioner #5,#6 (explosive, repair)";
			case ("B_engineer_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				comment "uniform full";
				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;

				[_x,  "ToolKit", 2] call Spec_fnc_addItemToContainer;
				for "_i" from 1 to 3 do {[_x,  "DemoCharge_Remote_Mag", 2] call Spec_fnc_addItemToContainer;};
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Repair Specialist - Logistic (inkl Repair)";
			case ("B_soldier_repair_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ToolKit", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_microDAGR", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Rifleman (Light) - MedEvac";
			case ("B_Soldier_lite_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 10 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,  "ACE_elasticBandage", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 12 do {[_x,  "ACE_quikclot", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 10 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 4 do {[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,  "ACE_salineIV", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 5 do {[_x,  "ACE_atropine", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 15 do {[_x,  "ACE_epinephrine", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 25 do {[_x,  "ACE_morphine", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_personalAidKit", 2] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_surgicalKit", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_microDAGR", 0] call Spec_fnc_addItemToContainer;
				
				_x setVariable ["ace_medical_medicClass", 2];
			};
			comment "Rifleman";
			case ("B_Soldier_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				comment "uniform full";
				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Helicopter Pilot - Template";
			case("B_Helipilot_F"): {
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

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				comment "uniform full";
				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Helicopter Crew - Template";
			case("B_helicrew_F"): {
				removeAllWeapons _x;
				removeAllItems _x;
				removeAllAssignedItems _x;
				removeUniform _x;
				removeVest _x;
				removeBackpack _x;
				removeHeadgear _x;
				removeGoggles _x;

				_x forceAddUniform "U_O_CombatUniform_ocamo";
				_x addVest "V_TacVest_khk";
				_x addBackpack "tf_mr3000";

				_x addWeapon "Binocular";
				_x linkItem "ItemMap";
				_x linkItem "ItemCompass";
				_x linkItem "ItemWatch";
				_x linkItem "tf_fadak_1";

				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 1] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 6 do {[_x,  "30Rnd_65x39_caseless_green", 2] call Spec_fnc_addItemToContainer;};
				_x addWeapon "arifle_Katiba_ARCO_pointer_F";

				for "_i" from 1 to 2 do {[_x,  "16Rnd_9x21_Mag", 1] call Spec_fnc_addItemToContainer;};
				_x addWeapon "hgun_Rook40_F";

				for "_i" from 1 to 2 do {[_x,  "SmokeShell", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellRed", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "SmokeShellGreen", 0] call Spec_fnc_addItemToContainer;};
				[_x,  "SmokeShellPurple", 0] call Spec_fnc_addItemToContainer;

				for "_i" from 1 to 2 do {[_x,  "rhs_mag_mk84", 0] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 2 do {[_x,  "Chemlight_red", 0] call Spec_fnc_addItemToContainer;};

				comment "uniform full";
				for "_i" from 1 to 2 do {[_x,  "O_IR_Grenade", 2] call Spec_fnc_addItemToContainer;};

				for "_i" from 1 to 7 do {[_x,  "ACE_fieldDressing", 2] call Spec_fnc_addItemToContainer;};
				for "_i" from 1 to 3 do {[_x,  "ACE_packingBandage", 2] call Spec_fnc_addItemToContainer;};
				[_x,  "ACE_tourniquet", 2] call Spec_fnc_addItemToContainer;
				
				[_x,  "ACE_EarPlugs", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_MapTools", 0] call Spec_fnc_addItemToContainer;
				[_x,  "ACE_Flashlight_MX991", 0] call Spec_fnc_addItemToContainer;
			};
			comment "Default Case - kein passender Soldat";
			comment "Nehme zum Testen ihm alles weg.";
			comment "Im MP Standard Layout mit addItemToBackpack 'FirstAidKit'";
			comment "damit Spieler erkennt, dass etwas nicht in Ordnung ist.";
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
	};
};
