/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"BW Shop 3"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["BWA3_Uniform_Fleck",nil,15000],
		["BWA3_Uniform2_Fleck",nil,15000],
		["BWA3_Uniform3_Fleck",nil,15000],
		["BWA3_Uniform_Ghillie_Fleck",nil,15000],
		["BWA3_Uniform_Tropen",nil,15000],
		["BWA3_Uniform2_Tropen",nil,15000],
		["BWA3_Uniform3_Tropen",nil,15000],
		["BWA3_Uniform_Ghillie_Tropen",nil,15000],
		["BWA3_Uniform_Crew_Tropen",nil,15000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["BWA3_Beret_PzGren",nil,4500],
			["BWA3_Beret_Wach_Blau",nil,4500],
			["BWA3_Beret_Pz",nil,4500],
			["BWA3_M92_Fleck",nil,4500],
			["BWA3_M92_Tropen",nil,4500],
			["BWA3_CrewmanKSK_Tropen",nil,4500],
			["BWA3_OpsCore_Fleck",nil,4500],
			["BWA3_OpsCore_Fleck_Patch",nil,4500],
			["BWA3_OpsCore_Fleck_Camera",nil,4500],
			["BWA3_CrewmanKSK_Fleck",nil,4500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
		];
	};
	
	//Vest
	case 3:
	{
		[
			["BWA3_Vest_Fleck",nil,15000],
			["BWA3_Vest_Rifleman1_Fleck",nil,15000],
			["BWA3_Vest_Autorifleman_Fleck",nil,15000],
			["BWA3_Vest_Grenadier_Fleck",nil,15000],
			["BWA3_Vest_Medic_Fleck",nil,15000],
			["BWA3_Vest_Marksman_Fleck",nil,15000],
			["BWA3_Vest_Leader_Fleck",nil,15000],
			["BWA3_Vest_Tropen",nil,15000],
			["BWA3_Vest_Rifleman1_Tropen",nil,15000],
			["BWA3_Vest_Autorifleman_Tropen",nil,15000],
			["BWA3_Vest_Grenadier_Tropen",nil,15000],
			["BWA3_Vest_Medic_Tropen",nil,15000],
			["BWA3_Vest_Marksman_Tropen",nil,15000],
			["BWA3_Vest_Leader_Tropen",nil,15000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		["BWA3_AssaultPack_Medic",nil,3000]
		];
	};
};