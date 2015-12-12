waitUntil {!isNull player || isServer};
private _parameterCorrect = params [["_unit",objNull,[objNull]]];

if(_parameterCorrect) then {
	if(side _unit == west) then {
			switch (typeOf _unit) do {
			comment "Grenadier - #2 inkl 40mm";
			case ("B_Soldier_GL_F"):{
				grenadierLoadout = compile preprocessFileLineNumbers "spec_loadout\grenadier.sqf";
				[_unit] call grenadierLoadout;
			};
			comment "CombatLifeSaver - Medic #3";
			case("B_medic_F"): {
				[_unit] execVM "spec_loadout\medic.sqf";
			};
			comment "Default Case - kein passender Soldat";
			comment "Nehme zum Testen ihm alles weg.";
			comment "Im MP Standard Layout mit addItemToBackpack 'ACE_Banana'";
			comment "damit Spieler erkennt, dass etwas nicht in Ordnung ist.";
			default {
				removeAllWeapons _unit;
				removeAllItems _unit;
				removeAllAssignedItems _unit;
				removeUniform _unit;
				removeVest _unit;
				removeBackpack _unit;
				removeHeadgear _unit;
				removeGoggles _unit;
			};
		};
	};
};
