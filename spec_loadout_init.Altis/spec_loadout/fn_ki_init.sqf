if (!isServer) exitWith {} ;
{
	if(side _x == west) then {
		comment "test for KI only";
		if(!isPlayer _x) then {
			[_x] call Spec_fnc_loadout_init;
			_x addEventHandler ["respawn","_this call Spec_fnc_loadout_respawn;"];
		}
	} else {
		_x removeMagazines "1Rnd_HE_Grenade_shell";
	};
} foreach  allunits;  