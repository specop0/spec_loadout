/*
    Author: SpecOp0, jokoho48

    Description:
    Wrapper to add a container to a unit (Uniform, Vest or Backpack).
    If the unit already has the container the content is cleared to avoid
    locality problems: http://feedback.arma3.com/view.php?id=19829
    Otherwise the container is removed and the new one is added.

    Parameter(s):
    0: OBJECT - unit to add a container
    1: STRING - classname of container

    Returns:
    BOOL - true if container was added (or cleared) successful
*/

private _parameterCorrect = params [["_x",objNull,[objNull]],["_containerClassname","",["STRING"]]];
private _returnValue = false;

if(_parameterCorrect) then {
    private _cfg = (configFile >> "CfgWeapons");
    private _containerNumber = -1;
    if (_containerClassname isKindOf ["Uniform_Base", _cfg]) then {
        _containerNumber = 0;
        
    };
    if (_containerClassname isKindOf ["Vest_NoCamo_Base", _cfg] || _containerClassname isKindOf ["Vest_Camo_Base", _cfg]) then {
        _containerNumber = 1;
    };
    if (_containerClassname isKindOf "Bag_Base") then {
        _containerNumber = 2;
    };
    _returnValue = true;
    switch (_containerNumber) do {
        case 0 : {
            _uniformName = uniform _x;
            if(_containerClassname == _uniformName && _containerClassname != "") then {
                private _uniform = uniformContainer _x;
                clearItemCargoGlobal _uniform;
                clearMagazineCargoGlobal _uniform;
                clearWeaponCargoGlobal _uniform;
            } else {
                removeUniform _x;
                _x forceAddUniform _containerClassname;
            };
        };
        case 1 : {
            _vestName = vest _x;
            if(_containerClassname == _vestName && _containerClassname != "") then {
                private _vest = vestContainer _x;
                clearItemCargoGlobal _vest;
                clearMagazineCargoGlobal _vest;
                clearWeaponCargoGlobal _vest;
            } else {
                removeVest _x;
                _x addVest _containerClassname;
            };
        };
        case 2 : {
            private _backpackName = backpack _x;
            if(_containerClassname == _backpackName && _containerClassname != "") then {
                _backpack = backpackContainer _x;
                clearItemCargoGlobal _backpack;
                clearMagazineCargoGlobal _backpack;
                clearWeaponCargoGlobal _backpack;
            } else {
                removeBackpack _x;
                _x addBackpack _containerClassname;
            };
        };
        default {
            _returnValue = false;
        };
    };
};
_returnValue
