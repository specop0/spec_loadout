{
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";

                for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                _x addItemToUniform "ACE_microDAGR";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_CableTie";};

                for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
                for "_i" from 1 to 5 do {_x addItemToBackpack "1Rnd_HE_Grenade_shell";};
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                _x addItemToUniform "ACE_microDAGR";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_GL_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";

                for "_i" from 1 to 2 do {_x addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
                for "_i" from 1 to 2 do {_x addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "1Rnd_HE_Grenade_shell";};
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                _x addItemToUniform "ACE_microDAGR";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 8 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_elasticBandage";};
                for "_i" from 1 to 12 do {_x addItemToBackpack "ACE_quikclot";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "ACE_packingBandage";};
                for "_i" from 1 to 4 do {_x addItemToBackpack "ACE_tourniquet";};
                for "_i" from 1 to 12 do {_x addItemToBackpack "ACE_salineIV_500";};
                for "_i" from 1 to 5 do {_x addItemToBackpack "ACE_atropine";};
                for "_i" from 1 to 10 do {_x addItemToBackpack "ACE_epinephrine";};
                for "_i" from 1 to 20 do {_x addItemToBackpack "ACE_morphine";};
                _x addItemToBackpack "ACE_surgicalKit";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                
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

                for "_i" from 1 to 3 do {_x addItemToBackpack "150Rnd_762x54_Box";};
                _x addWeapon "LMG_Zafir_ARCO_F";
                _x addPrimaryWeaponItem "acc_pointer_IR";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                comment "uniform full";
                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                for "_i" from 1 to 2 do {_x addItemToBackpack "150Rnd_762x54_Box";};
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";

                for "_i" from 1 to 2 do {_x addItemToBackpack "RPG32_F";};
                _x addWeapon "launch_RPG32_F";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                comment "uniform full";
                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";

                _x addItemToBackpack "ToolKit";
                for "_i" from 1 to 3 do {_x addItemToBackpack "DemoCharge_Remote_Mag";};
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                _x addItemToBackpack "ToolKit";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                _x addItemToUniform "ACE_microDAGR";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 10 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_elasticBandage";};
                for "_i" from 1 to 12 do {_x addItemToBackpack "ACE_quikclot";};
                for "_i" from 1 to 10 do {_x addItemToBackpack "ACE_packingBandage";};
                for "_i" from 1 to 4 do {_x addItemToBackpack "ACE_tourniquet";};
                for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_salineIV";};
                for "_i" from 1 to 5 do {_x addItemToBackpack "ACE_atropine";};
                for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_epinephrine";};
                for "_i" from 1 to 25 do {_x addItemToBackpack "ACE_morphine";};
                _x addItemToBackpack "ACE_personalAidKit";
                _x addItemToBackpack "ACE_surgicalKit";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
                _x addItemToUniform "ACE_microDAGR";
                
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                comment "uniform full";
                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                comment "uniform full";
                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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

                for "_i" from 1 to 6 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
                for "_i" from 1 to 6 do {_x addItemToBackpack "30Rnd_65x39_caseless_green";};
                _x addWeapon "arifle_Katiba_ARCO_pointer_F";

                for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
                _x addWeapon "hgun_Rook40_F";

                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShell";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellRed";};
                for "_i" from 1 to 2 do {_x addItemToUniform "SmokeShellGreen";};
                _x addItemToUniform "SmokeShellPurple";

                for "_i" from 1 to 2 do {_x addItemToUniform "ACE_M84";};
                for "_i" from 1 to 2 do {_x addItemToUniform "Chemlight_red";};

                comment "uniform full";
                for "_i" from 1 to 2 do {_x addItemToBackpack "O_IR_Grenade";};

                for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
                for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
                _x addItemToBackpack "ACE_tourniquet";
                
                _x addItemToUniform "ACE_EarPlugs";
                _x addItemToUniform "ACE_MapTools";
                _x addItemToUniform "ACE_Flashlight_MX991";
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
    } else {
        _x removeMagazines "1Rnd_HE_Grenade_shell";
    };
} foreach  allunits;  
