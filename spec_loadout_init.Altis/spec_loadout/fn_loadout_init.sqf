waitUntil {!isNull player}; 
_parameterCorrect = params [["_x",objNull,[objNull]]];

if(_parameterCorrect) then {
	if(side _x == west) then {
		[_x] call Spec_fnc_loadout_respawn;
		comment "only some classes other loadout";
		comment "THIS STRUCTURE IMPORTANT!";
		if (!isNil "gelb_1") then {
			if (_x == gelb_1) then {
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
		if (!isNil "at_1") then {
			if (_x == at_1) then {
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
			};
		};
	};
};
