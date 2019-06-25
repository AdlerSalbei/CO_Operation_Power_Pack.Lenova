params ["_chairs"];

{
    if (_chairs isEqualTo []) exitWith {};

    if (isNull (getAssignedCuratorLogic _x)) then {
        private _chair = _chairs select 0;
        _chairs deleteAT 0;
        [_chair, _X] call acex_sitting_fnc_sit;
    };
}forEach (playableUnits + switchableUnits);