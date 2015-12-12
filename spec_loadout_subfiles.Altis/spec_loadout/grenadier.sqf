params [ ["_unit",objNull,[objNull]] ];

/*
comment "Exported from Arsenal by Spec";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "U_BG_Guerilla3_1";
this addVest "V_HarnessOGL_brn";
for "_i" from 1 to 3 do {this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addBackpack "B_AssaultPack_ocamo";
this addHeadgear "H_ShemagOpen_khk";

comment "Add weapons";
this addWeapon "arifle_MXC_Black_F";
this addPrimaryWeaponItem "optic_Hamr";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

comment "Set identity";
this setFace "AsianHead_A3_01";
this setSpeaker "ACE_NoVoice";
*/

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "U_BG_Guerilla3_1";
_unit addVest "V_HarnessOGL_brn";
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addBackpack "B_AssaultPack_ocamo";
_unit addHeadgear "H_ShemagOpen_khk";

_unit addWeapon "arifle_MXC_Black_F";
_unit addPrimaryWeaponItem "optic_Hamr";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
