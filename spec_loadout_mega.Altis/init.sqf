call Spec_fnc_ki_init;
if (hasInterface) then {
	player addEventhandler ["respawn", Spec_fnc_loadout];
}
