waitUntil {!isNull player || isServer}; 
private _parameterCorrect = params [["_unit",objNull,[objNull]]];

if(_parameterCorrect) then {
    if(side _unit == west) then {
        [_unit] call Spec_fnc_loadout_respawn;
        comment "only some classes other loadout";
        comment "THIS STRUCTURE IMPORTANT!";
        if (!isNil "gelb_1") then {
            if (_unit == gelb_1) then {
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
        if (!isNil "at_1") then {
            if (_unit == at_1) then {
                removeAllWeapons _unit;
                removeAllItems _unit;
                removeAllAssignedItems _unit;
                removeUniform _unit;
                removeVest _unit;
                removeBackpack _unit;
                removeHeadgear _unit;
                removeGoggles _unit;
                
                _unit addHeadgear "H_HelmetLeaderO_ocamo";
                _unit forceAddUniform "U_O_CombatUniform_ocamo";
                _unit addVest "V_TacVest_khk";
                _unit addBackpack "tf_mr3000";

                _unit addWeapon "Rangefinder";
                _unit linkItem "ItemMap";
                _unit linkItem "ItemCompass";
                _unit linkItem "ItemWatch";
                _unit linkItem "tf_fadak_1";
                _unit linkItem "ItemGPS";
            };
        };
    };
};
