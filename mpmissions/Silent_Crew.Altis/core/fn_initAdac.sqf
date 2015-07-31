#include <macro.h>
/*
File: fn_initasadac.sqf
Author: Bryan "Tonic" Boardwine

Description:
Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

if((__GETC__(life_adaclevel)) < 1) exitWith {
["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
//Paychecks
switch (__GETC__(life_adaclevel)) do {
	case 1: { life_paycheck = 5000; };
	case 2: { life_paycheck = 7500; };
	case 3: { life_paycheck = 10000; };
	case 4: { life_paycheck = 30000; };
	case 5: { life_paycheck = 40000; };
	case 6: { life_paycheck = 45000; };
	case 7: { life_paycheck = 60000; };
	default { life_paycheck = 3000; };
};
