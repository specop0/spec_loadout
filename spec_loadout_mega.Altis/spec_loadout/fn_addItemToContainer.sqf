waitUntil {!isNull player};
_parameterCorrect = params [["_x",objNull],["_item",objNull],["_container",0,[0]]];
_returnValue = 1;

if(_parameterCorrect) then {
	switch (_container) do {
		case 0 : {
			_spaceFree = _x canAddItemToUniform _item;
			if(_spaceFree) then {
				_x addItemToUniform _item;
				_returnValue = 0;
			} else {
				hint format ["Could not add %1 to Uniform\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};	
		};
		case 1 : {
			_spaceFree = _x canAddItemToVest _item;
			if(_spaceFree) then {
				_x addItemToVest _item;
				_returnValue = 0;
			} else {
				hint format ["Could not add %1 to Vest\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};
		};
		case 2 : {
			_spaceFree = _x canAddItemToBackpack _item;
			if(_spaceFree) then {
				_x addItemToBackpack _item;
				_returnValue = 0;
			} else {
				hint format ["Could not add %1 to Backpack\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};
		};
		case 3 : {
			_spaceFree = _x canAddItemToUniform _item;
			if(_spaceFree) then {
				_x addItemToUniform _item;
				_returnValue = 0;
			} else {
				_spaceFree = _x canAddItemToVest _item;
				if(_spaceFree) then {
					_x addItemToVest _item;
					_returnValue = 0;
				} else {
					_spaceFree = _x canAddItemToBackpack _item;
					if(_spaceFree) then {
						_x addItemToBackpack _item;
						_returnValue = 0;
					} else {
						hint format ["Could not add %1 to any Container\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
					};
				};
			};
		};
	};
};
_returnValue