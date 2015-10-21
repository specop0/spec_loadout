if(params [["_x",objNull, [objNull]],["_item","", [""]],["_container",3,[0]]]) then {
	switch (_container) do {
		case 0 : {
			if(_x canAddItemToUniform _item) then {
				_x addItemToUniform _item;
			} else {
				hint format ["Could not add %1 to Uniform\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};
		};
		case 1 : {
			if(_x canAddItemToVest _item) then {
				_x addItemToVest _item;
			} else {
				hint format ["Could not add %1 to Vest\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};
		};
		case 2 : {
			if(_x canAddItemToBackpack _item) then {
				_x addItemToBackpack _item;
			} else {
				hint format ["Could not add %1 to Backpack\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
			};
		};
		default {
			if(_x canAddItemToUniform _item) exitWith {
				_x addItemToUniform _item;
			};
			if(_x canAddItemToVest _item) exitWith {
				_x addItemToVest _item;
			};
			if(_x canAddItemToBackpack _item) exitWith {
				_x addItemToBackpack _item;
			};
			hint format ["Could not add %1 to any Container\nUnit Type = %2\nUnit Name = %3", _item, typeOf _x, str _x];
		};
	};
};
