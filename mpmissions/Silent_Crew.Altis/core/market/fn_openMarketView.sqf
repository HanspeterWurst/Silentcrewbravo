/*

	Open pack-up dlg

*/

if(!createDialog "marketView") exitWith {hint "Failed Creating Dialog";}; //Couldn't create the menu?
disableSerialization;

//Refresh
[] call life_fnc_refreshMarketView;

waitUntil {!isnull (findDisplay 39500)};


