_parameterCorrect = params [["_x",objNull]];
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

	for "_i" from 1 to 7 do {_x addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 3 do {_x addItemToBackpack "ACE_packingBandage";};
	_x addItemToBackpack "ACE_tourniquet";
	
	_x addItemToBackpack "ToolKit";
	
	_x addItemToUniform "ACE_EarPlugs";
	_x addItemToUniform "ACE_MapTools";
	_x addItemToUniform "ACE_Flashlight_MX991";
	_x addItemToUniform "ACE_microDAGR";
};