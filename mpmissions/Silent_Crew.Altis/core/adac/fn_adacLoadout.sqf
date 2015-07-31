/*
File: fn_AsADACDefault.sqf
Author: Bryan "Tonic" Boardwine

Description:
Default ADAC configuration.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceAddUniform "U_Rangemaster";
player addBackPack "B_Bergen_Base";
player addItem "ItemMap";
player addItem "Toolkit";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[[player,0,"textures\adac_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;