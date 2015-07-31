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
ctrlSetText[3103,"BW Shop 2"];

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
		["BWA3_Uniform_Crew_Fleck",nil,15000]
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
			["BWA3_Booniehat_Tropen",nil,4500]
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