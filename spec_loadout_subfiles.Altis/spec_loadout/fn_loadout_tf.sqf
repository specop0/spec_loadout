_parameterCorrect = params [["_x",objNull,[objNull]]];
if(_parameterCorrect) then {
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
