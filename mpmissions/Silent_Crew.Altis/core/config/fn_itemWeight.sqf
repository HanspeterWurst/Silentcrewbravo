/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {8};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {4};
	case "cocainep": {3};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "baumu": {31};
	case "bauholz": {7};
	case "bretter": {3};
	case "silveru": {10};
	case "silver1": {9};
	case "silverp": {6};
	case "goldu": {8};
	case "frog": {4};//Neu eingefügt
    case "lsd": {2};//Neu eingefügt
    case "netz": {1};//Neu eingefügt
	case "coal": {4};
	case "coalp": {3};
	case "axe": {3};
	case "cbohne": {4};
	case "kakaor": {2};
	case "tabac": {5};
	case "zigarett": {2};
	case "cigar": {3};
	case "cigdeck": {1};
	case "kbohne": {4};
	case "kaffeer": {2};
	case "pressl": {4};
	case "odrill": {3};
	//case ""
	
	default {1};
};
