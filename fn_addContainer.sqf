_parameterCorrect = params [["_x",objNull,[objNull]],["_containerClassname","",["string"]],["_containerNumber",0,[0]]];
_returnValue = false;

if(_parameterCorrect) then {
	_returnValue = true;
	switch (_containerNumber) do {
		case 0 : {
			_uniformName = uniform _x;
			if(_containerClassname == _uniformName && _containerClassname != "") then {
				_uniform = uniformContainer _x;
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
				_vest = vestContainer _x;
				clearItemCargoGlobal _vest;
				clearMagazineCargoGlobal _vest;
				clearWeaponCargoGlobal _vest;
			} else {
				removeVest _x;
				_x addVest _containerClassname;
			};	
		};
		case 2 : {
			_backpackName = backpack _x;
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
