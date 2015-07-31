/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_coal" : {"Kohlenerz"};
	case "life_inv_coalp" : {"Koks"};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_baumu": {"Baumstamm"};
	case "life_inv_axe": {"Axt"};
	case "life_inv_bretter": {"Holzbretter"};
	case "life_inv_bauholz": {"Bauholz"};
	case "life_inv_goldu": {"Golderz"};
	case "life_inv_gold1": {"Rohgold"};
	case "life_inv_gold2": {"aufg. Gold"};
	case "life_inv_goldp": {"Goldnuggets"};
	case "life_inv_plateu": {"Platinerz"};
	case "life_inv_plate1": {"Rohplatin"};
	case "life_inv_plate2": {"aufg.Platin"};
	case "life_inv_platep": {"Platinbarren"};
	case "life_inv_silveru": {"Silbererz"};
	case "life_inv-silver1": {"Rohsilber"};
	case "life_inv_silverp": {"Feinsilber"};
	case "life_inv_cabfall" : {"Chemieabfall"};// Neu eingefügt 03.06 für methproduktion
	case "life_inv_nitro" : {"Verdünnung"};// Neu eingefügt 03.06 für meth prodiktion
	case "life_inv_hcso3" : {"Hcso3"}; // Neu eingefügt 03.06 für methproduktion
	case "life_inv_frog": {"Frosch"};//Neu eingefügt
	case "life_inv_frogsu" : {"Froschschenkel"}; // Neu eingefügt 03.06
	case "life_inv_cbohne" : {"Kakaobohnen"}; /// eingefügt 14.06
	case "life_inv_kakaob" : {"gerösteter Kakao"};//14.06
	case "life_inv_tabac" : {"Tabakblätter"};//14.06
	//case "life_inv_zigarett" : ["Zigaretten"];//14.06
	//case "life_inv_cigar" : {"Zigarren"};//14.06
	//case "life_inv_kbohne" : {"Kaffeebohnen"};//14.06
	//case "Life_inv_cdeckbl" : {"Zigarren Deckbl."};//14.06
	//case "life_inv_kaffeer" : {"gerösteter Kaffee"};//14.06
	//case "life_inv_blaus" : {"Blausäure"}; // 14.06 blausäure zum auflösen von gold und Platin dual Process 
	//case "life_inv_pressl" : {"Presslufthammer"};// 14.06 zum farmen von Erz mehr Erz pro farmen nur craftbar
	//case "life_inv_oildriller" : {"Ölbohrer"};// 14.06 zum farmen von öl nur craftbar
    case "life_inv_lsd": {"LSD"};
    case "life_inv_netz": {"Froschnetz"};
	//case "life_inv_x": {"x"};
	
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_adac_car": {"ADAC Führerschein"};
    case "license_adac_air": {"ADAC Pilotenschein"};
	case "license_cop_sek": {"SEK"};
	case "license_civ_holz": {"Holz verarbeiten"};
	case "license_civ_plate": {"Platin verarbeiten"};
	case "license_civ_gold": {"Gold verarbeiten"};
	case "license_civ_silver": {"Silber verarbeiten"};
	case "license_cop_isa": {"ISA-Mitgliedschaft"};
	case "license_civ_perso": {"Personalausweis"};
	case "license_civ_coal" : {"Kohleverarbeitung"};
	case "license_civ_lsd": {"LSD Training"};//Neu eingefügt
	case "lcense_civ:coffee": {"Kaffee rösten"};
	case "license_civ_cacao": {"Kakaobohnen rösten"};
	case "license_civ_cigarett": {"Zigaretten herstellen"};
	case "license_civ_zigar": {"Zigarren produzieren"};
	case "license_cop_SPZ": {"Spezialistenausbildung"};//11.07
	case "license_cop_BWS": {"Blackwater Security"};//11.07 Lizens für Blackwater Security
};
