/*
	File: fn_presslUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for axe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.

if(life_inv_oildrill > 1) exitWith 
{
	call life_fnc_presslUse
};



switch (true) do
{
	case (player distance (getMarkerPos "oil_1") < 3): {_mine = "oilu"; _val = 4;};
	case (player distance (getMarkerPos "oil_2")) < 10): {_mine = "oilu"; _val = 4;};
	case (player distance (getMarkerPos "oil_3")) < 3): {_mine = "oilu"; _val = 4;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gathering = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_gathering = false;