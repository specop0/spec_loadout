waitUntil {!isNull player};
_parameterCorrect = params [["_x",objNull,[objNull]]];

if(_parameterCorrect) then {
	if(side _x == west) then {
			switch (typeOf _x) do {
			comment "Officer - OPL";
			case ("B_officer_F"): {
				[_x] call Spec_fnc_loadout_opl;
			};
			comment "TeamLeader - #1";
			case ("B_Soldier_TL_F"): {
				[_x] call Spec_fnc_loadout_tf;
			};
			comment "Grenadier - #2 inkl 40mm";
			case ("B_Soldier_GL_F"):{
				[_x] call Spec_fnc_loadout_gl;
			};
			comment "CombatLifeSaver - Medic #3";
			case("B_medic_F"): {
				[_x] call Spec_fnc_loadout_medic;
			};
			comment "Autorifleman - MMG #4";
			case ("B_soldier_AR_F"): {
				[_x] call Spec_fnc_loadout_mg;
			};
			comment "AmmoBearer - MG-Assi";
			case ("B_Soldier_A_F"): {
				[_x] call Spec_fnc_loadout_mgassi;
			};
			comment "Rifleman AT - AT-Schuetze #5,#6";
			case ("B_soldier_LAT_F"): {
				[_x] call Spec_fnc_loadout_at;
			};
			comment "Engineer - Pioner #5,#6 (explosive, repair)";
			case ("B_engineer_F"): {
				[_x] call Spec_fnc_loadout_pio;
			};
			comment "Repair Specialist - Logistic (inkl Repair)";
			case ("B_soldier_repair_F"): {
				[_x] call Spec_fnc_loadout_logistic;
			};
			comment "Rifleman (Light) - MedEvac";
			case ("B_Soldier_lite_F"): {
				[_x] call Spec_fnc_loadout_medevac;
			};
			comment "Rifleman";
			case ("B_Soldier_F"): {
				_x execVM "spec_loadout\newloadout.sqf";
			};
			comment "Default Case - kein passender Soldat";
			comment "Nehme zum Testen ihm alles weg.";
			comment "Im MP Standard Layout mit addItemToBackpack 'ACE_Banana'";
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
