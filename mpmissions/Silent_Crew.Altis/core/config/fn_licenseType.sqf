/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "car": {_var = "license_adac_car"};
            case "air": {_var = "license_adac_air"};
			case "sek": {_var = "license_cop_sek"};
			case "isa": {_var = "license_cop_isa"};
			case "SPZ": {_var = "license_cop_SPZ"};
			case "BWS": {_var = "license_cop_BWS"};
			case "perso": {_var= "license_civ_perso"};
			case "gold": {_var= "license_civ_gold"};
			case "silver": {_var= "license_civ_silver"};
			case "plate": {_var= "license_civ_plate"};
			case "isac1": {_var = "license_cop_isac1"};
			case "isac2": {_var = "license_cop_isac2"};
			case "isac3": {_var = "license_cop_isac3"};
			case "isac4": {_var = "license_cop_isac4"};
			case "lsd": {_var = "license_civ_lsd"};//Neu eingefügt
			case "coal": {_var = "license_civ_coal"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_adac_car": {_var = "car"};
            case "license_adac_air": {_var = "air"};
			case "license_cop_sek": {_var = "sek"};
			case "license_cop_isa": {_var = "isa"};
			case "license_cop_SPZ": {_var = "SPZ"};
			case "license_cop_BWS": {_var = "BWS"};
			case "license_civ_perso": {_var = "perso"};
			case "license_civ_silver": {_var = "silver"};
			case "license_civ_gold": {_var = "gold"};
			case "license_civ_plate": {_var = "plate"};
			case "license_cop_isac1": {_var = "isac1"};
			case "license_cop_isac2": {_var = "isac2"};
			case "license_cop_isac3": {_var = "isac3"};
			case "license_cop_isac4": {_var = "isac4"};
			case "license_civ_lsd": {_var = "lsd"};
			case "license_civ_coal": {_var = "coal"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;