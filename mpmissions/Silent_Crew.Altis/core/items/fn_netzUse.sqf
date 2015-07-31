/*
        File: fn_netzUse.sqf
        Author: GekkoHD
        
        Description:
        Froschnetz Funktion.
    */
    closeDialog 0;
	
	if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.

	if(life_inv_netz > 1) exitWith {};
	
    private["_netz","_itemWeight","_diff","_itemName","_val"];
    switch (true) do
    {
        case (player distance (getMarkerPos "lsd_1") < 250): {_netz = "frog"; _val = 3;};
        default {_netz = "";};
    };

    //Sumpf Check
    if(_netz == "") exitWith {hint "Du bist nicht in der Nähe des Sumpfs!"};
    if(vehicle player != player) exitWith {hint "Du kannst nichts fangen, wenn du in einem Fahrzeug sitzt.";};

    _diff = [_netz,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
    if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};
    life_action_gathering = true;
    for "_i" from 0 to 2 do
    {
        player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
        waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
        sleep 2.5;
    };

    if(([true,_netz,_diff] call life_fnc_handleInv)) then
    {
        _itemName = [([_netz,0] call life_fnc_varHandle)] call life_fnc_varToStr;
        titleText[format["Du hast %2 %1 gefangen.",_itemName,_diff],"PLAIN"];
    };

    life_action_gathering = false;