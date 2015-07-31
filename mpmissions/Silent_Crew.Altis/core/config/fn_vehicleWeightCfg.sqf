/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {30};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {1850};
	case "B_Truck_01_transport_F": {600};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {100};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {350};
	case "O_Truck_03_covered_F": {400};
	case "O_Truck_03_device_F": {800};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "B_Heli_Transport_03_F": {600};
	case "O_Heli_Transport_04_medevac_F": {500};
	case "C_Heli_Light_01_civil_F": {150};
	case "O_Heli_Transport_04_covered_F": {200};
	case "B_G_Offroad_01_F": {70};
	case "O_Heli_Transport_04_medevac_F": {500};
	case "C_Heli_Light_01_civil_F": {150};
	case "O_Heli_Transport_04_fuel_F": {664};
	case "B_Heli_Transport_03_unarmed_F": {600};
	case "O_Heli_Transport_04_box_F": {475};
	case "C_Offroad_01_repair_f": {70};
	case "max_H3_black": {40};
	case "max_H3_yellow": {40};
	case "cl3_r8_spyder_red": {55};
	case "CL3_bus_cl_black": {-1};
	case "cl3_e60_m5_cardinal": {40};
	case "cl3_dodge_chargerum_s_darkred": {45};
	case "cl3_e63_amg_navy_blue": {50};
	case "cl3_golf_learner": {65};
	case "cl3_f150repo_black": {45};
	case "cl3_lada": {50};
	case "cl3_range_rover_lime": {75};
	case "cl3_insignia_burgundy": {40};
	case "B_G_Van_01_fuel_F": {};
	case "O_Truck_03_fuel_F": {};
	case "O_Truck_02_fuel_F": {};
	case "B_Truck_01_fuel_F": {};
	default {-1};
};