#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",15000]
		];
	};
	
	case "med_air_hs": 
	{
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack 
			["B_Heli_Light_01_F",50000];
			_return pushBack 
			["O_Heli_Light_02_unarmed_F",50000];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",15500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",60000]
		];
	};
	
	case "civ_EPC":
	{
		_return = 
		[
			["max_H3_black",483333],
			["max_H3_yellow",483333],
			["cl3_r8_spyder_red",750000],
			["CL3_bus_cl_black",50000],
			["cl3_e60_m5_cardinal",50000],
			["cl3_dodge_chargerum_s_darkred",50000],
			["cl3_e63_amg_navy_blue",50000],
			["cl3_golf_learner",50000],
			["cl3_f150repo_black",50000],
			["cl3_lada",50000],
			["cl3_range_rover_lime",50000],
			["cl3_insignia_burgundy",50000]
		];
	};
	
	case "Nutzfzg":
	{
		_return = 
		[
			["B_G_Van_01_fuel_F",483333],		// truck fuel
			["O_Truck_03_fuel_F",483333],		// tempest fuel
			["O_Truck_02_fuel_F",1111],			// zamak fuel
			["B_Truck_01_fuel_F",1111]				// hemmit fuel
		];
	};
	
	case "civ_Bus":
	{
		_return = 
		[
			["max_H3_black",483333],
			["max_H3_yellow",483333]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",85000],
			["I_Truck_02_transport_F",105000],
			["I_Truck_02_covered_F",250000],
			["B_Truck_01_transport_F",1750000],
			["O_Truck_03_transport_F",475000],
			["O_Truck_03_covered_F",550000],
			["B_Truck_01_box_F",5250000],
			["O_Truck_03_device_F",7500000] // Tempest device
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",19000],
			["O_MRAP_02_F",11000000],
			["B_Heli_Light_01_F",425000],
			["O_Heli_Transport_04_covered_F",2500000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",1500000];
		};
	};
	
	case "ISA_car":
	{
	    if((__GETC__(life_coplevel) > 1) && (license_cop_isa)) then
		{
		["B_Quadbike_01_F",1250];
		};
		if((__GETC__(life_coplevel) > 5) && (license_cop_isa)) then
		{
		["B_Quadbike_01_F",1250];
		};
	    if((__GETC__(life_coplevel) > 6) && (license_cop_isa)) then
		{
		  _return pushBack
		   ["BWA3_Puma_Fleck",350000];
		};   
		if((__GETC__(life_coplevel) > 6) && (license_cop_isa)) then
		{
			_return pushBack
			["BWA3_Leopard2A6M_Fleck",650000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["B_MRAP_01_F",50000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["I_MRAP_03_F",100000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["B_MRAP_01_hmg_F",200000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["BWA3_Leopard2A6M_Feck",650000];
		};		
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",325000],  // 100 laderaum humming
			["O_Heli_Light_02_unarmed_F",2500000],  //210 Laderaum Orca
			["I_Heli_Transport_02_F",3850000],  // 375 laderaum Mohawk
			["C_Heli_Light_01_civil_F",1250000],  // 150 M900
			["O_Heli_Transport_04_covered_F",2500000],  // 200 Taru
			["B_Heli_Transport_03_unarmed_F",5850000],  // 600 Laderaum Huron
			["O_Heli_Transport_04_box_F",4425000] //mit 475 lade taru fracht
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",70000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",100000];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushback
			["I_Heli_light_03_unarmed_F",200000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushback
			["B_Heli_Transport_03_F",240000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",70000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushback
			["B_Heli_Transport_01_F",100000];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushback
			["I_Heli_light_03_unarmed_F",200000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

	case "adac_car":
	{
		_return = [
			["C_Offroad_01_F",15500],
			["C_SUV_01_F",20000],
			["B_Truck_01_mover_F",30000]
		];
	};
	
	case "adac_air":
	{
		_return = [
			["B_Heli_Light_01_F",55000],
			["O_Heli_Light_02_unarmed_F",120000],
			["O_Heli_Transport_04_F",230000]
		];
	};
};

_return;
