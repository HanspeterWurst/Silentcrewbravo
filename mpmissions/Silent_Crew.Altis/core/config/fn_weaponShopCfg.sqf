#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_snds_F","Tazer",2000],
						["hgun_P07_F",nil,7500],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ItemRadio",nil,100],
						["Itemwatch",nil,100],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,1000],
						["NVGoggles_OPFOR",nil,2000],
						["Chemlight_green",nil,50],						
						["Chemlight_red",nil,50],
						["Chemlight_yellow",nil,50],
						["Chemlight_blue",nil,50],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Arzt"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,50],
						["B_Carryall_khk",nil,5000],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["H_Beret_blk",nil,100]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"DU hast keinen Lieutenant Rang!"};
			default
			{
				["Lieutenant Equipment",
					[						
						["arifle_MXC_Black_F","MX Negra C",30000],		
						["arifle_MX_Black_F","MX Negra",15000],
						["arifle_MX_Black_Hamr_pointer_F","MXM Negra",80000],	
						["30Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,100000],				
						["20Rnd_762x51_Mag",nil,100],
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],
						["SmokeShellgreen",nil,3000],
						["HandGrenade_Stone","Flashbang",3000],
						["acc_pointer_IR",nil,5000],
						["H_Beret_grn",nil,100],
						["B_UAV_01_backpack_F",nil,80000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast keinen Captain Rang!"};
			default
			{
				["Captain Equipment",
					[
						["arifle_MXC_Black_F","MX Negra C",30000],		
						["arifle_MX_Black_F","MX Negra",15000],
						["arifle_MX_Black_Hamr_pointer_F","MXM Negra",80000],	
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],
						["srifle_EBR_F",nil,100000],					
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Pistol_heavy_02_F","Revolver",8000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",80],
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],							
						["SmokeShellgreen",nil,1000],
						["optic_Hamr",nil,15000],
						["HandGrenade_Stone","Flashbang",3000],
						["acc_pointer_IR",nil,5000],
						["H_Beret_02",nil,100],
						["B_UAV_01_backpack_F",nil,80000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 7): {"Du hast keinen Deputy Chief Rang!"};
			default
			{
				["Deputy Chief Equipment",
					[
						["arifle_MXC_Black_F","MX Negra C",30000],		
						["arifle_MX_Black_F","MX Negra",15000],
						["arifle_MX_Black_Hamr_pointer_F","MXM Negra",80000],	
						["30Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,30000],				
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Pistol_heavy_02_F","Revolver",8000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",80],
						["optic_Arco",nil,10000],
						["optic_Nightstalker",nil,500000],
						["optic_tws",nil,25000],		
						["optic_SOS",nil,25000],
						["optic_DMS",nil,10000],						
						["optic_MRCO",nil,10000],
						["optic_Holosight",nil,1200],					
						["SmokeShellgreen",nil,1000],
						["HandGrenade_Stone","Flashbang",3000],
						["acc_pointer_IR",nil,5000],
						["H_Beret_Colonel",nil,100],
						["B_UAV_01_backpack_F",nil,80000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};
		
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenausbildung!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,70000],
						["srifle_DMR_01_F",nil,250000],
						["srifle_EBR_F",nil,250000],
						["20Rnd_762x51_Mag",nil,1000],
						["arifle_SDAR_F",nil,35000],
						["hgun_Pistol_heavy_01_F",nil,8000],
						["11Rnd_45ACP_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,8000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3000],
						["optic_Aco_smg",nil,3000],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,20000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,500],
						["30Rnd_556x45_Stanag",nil,2300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,500],
						["HandGrenade",nil,75000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,250],
						["ItemGPS",nil,100],
						["ItemRadio",nil,100],
						["Binocular",nil,150],
						["NVGoggles",nil,3500],
						["SmokeShell",nil,1000],
						["SmokeShellRed",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["Chemlight_green",nil,50],
						["Chemlight_red",nil,50],
						["Chemlight_yellow",nil,50],
						["Chemlight_blue",nil,50],
						["SmokeShellOrange",nil,1000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight_smg",nil,3000],
						["SMG_01_F",nil,50000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["SMG_02_F",nil,65000],
						["V_BandollierB_cbr",nil,4500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,500],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,500]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "ISA":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Soldat"};
			case (!license_cop_isa): {"Du hast nicht die benoetigte Lizenz!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Gefreiter",
					[
						["FirstAidKit",nil,475],
						["ItemRadio",nil,150],
						["Medikit",nil,500],
						["ToolKit",nil,500],
						["NVGoggles",nil,6000]
					]
				];
			};
		}; 
	};	
	
	case "ISA2":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Soldat"};
			case (!license_cop_isa): {"Du hast nicht die benoetigte Lizenz!"};
			case (__GETC__(life_coplevel) == 2):
			{
				["Hauptgefreiter",
					[
						["FirstAidKit",nil,475],
						["ItemRadio",nil,150],
						["NVGoggles",nil,6000],
						["BWA3_P8",nil,3500],
						["BWA3_MP7",nil,7500],// Mach mal weiter ich will morgen mit meiner Arbeit fertig sein
                        ["BWA3_G36",nil,25000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_15Rnd_9x19_P8",nil,150],
						["BWA3_30Rnd_556x45_G36",nil,550],
						["BWA3_30Rnd_556x45_G36_Tracer",nil,650],
						["BWA3_40Rnd_46x30_MP7",nil,350]
					]
				];
			};
		};
	};
	
	case "ISA3":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Soldat"};
			case (!license_cop_isa): {"Du hast nicht die benoetigte Lizenz!"};
			case (__GETC__(life_coplevel) == 3):
			{
				["Stabsgefreiter",
					[
						["FirstAidKit",nil,475],
						["ItemRadio",nil,150],
						["NVGoggles",nil,6000],
						["BWA3_P8",nil,3500],
						["BWA3_MP7",nil,7500],// Mach mal weiter ich will morgen mit meiner Arbeit fertig sein
                        ["BWA3_G36",nil,25000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_15Rnd_9x19_P8",nil,150],
						["BWA3_30Rnd_556x45_G36",nil,550],
						["BWA3_30Rnd_556x45_G36_Tracer",nil,650],
						["BWA3_40Rnd_46x30_MP7",nil,350],
						["BWA3_G36_LMG",nil,50000],
						["BWA3_MG4",nil,85000],	
                        ["BWA3_optic_RSAS",nil,15000],
						["BWA3_optic_Aimpoint",nil,15000],
						["BWA3_optic_NSV600",nil,15000],
						["BWA3_optic_IRV600",nil,15000],
						["BWA3_optic_NSV80",nil,15000],
						["BWA3_optic_NSA80",nil,15000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_optic_ZO4x30_NSV",nil,15000],
						["BWA3_optic_ZO4x30_IRV",nil,15000],
						["BWA3_optic_Shortdot",nil,15000],
						["BWA3_optic_20x50",nil,15000],
						["BWA3_optic_20x50_NSV",nil,15000],
						["BWA3_optic_24x72",nil,15000],
						["BWA3_optic_24x72_NSV",nil,15000],
						["BWA3_acc_LLM01_irlaser",nil,15000]
					]
				];
			};
		};
	};	
	
	case "ISA4":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Soldat"};
			case (!license_cop_isa): {"Du hast nicht die benoetigte Lizenz!"};
			case (__GETC__(life_coplevel) == 4):
			{
				["Unteroffizier",
					[
						["FirstAidKit",nil,475],
						["ItemRadio",nil,150],
						["NVGoggles",nil,6000],
						["BWA3_P8",nil,3500],
						["BWA3_MP7",nil,7500],// Mach mal weiter ich will morgen mit meiner Arbeit fertig sein
                        ["BWA3_G36",nil,25000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_15Rnd_9x19_P8",nil,150],
						["BWA3_30Rnd_556x45_G36",nil,550],
						["BWA3_30Rnd_556x45_G36_Tracer",nil,650],
						["BWA3_40Rnd_46x30_MP7",nil,350],
						["BWA3_G36_LMG",nil,50000],
						["BWA3_MG4",nil,85000],	
                        ["BWA3_optic_RSAS",nil,15000],
						["BWA3_optic_Aimpoint",nil,15000],
						["BWA3_optic_NSV600",nil,15000],
						["BWA3_optic_IRV600",nil,15000],
						["BWA3_optic_NSV80",nil,15000],
						["BWA3_optic_NSA80",nil,15000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_optic_ZO4x30_NSV",nil,15000],
						["BWA3_optic_ZO4x30_IRV",nil,15000],
						["BWA3_optic_Shortdot",nil,15000],
						["BWA3_optic_20x50",nil,15000],
						["BWA3_optic_20x50_NSV",nil,15000],
						["BWA3_optic_24x72",nil,15000],
						["BWA3_optic_24x72_NSV",nil,15000],
						["BWA3_acc_LLM01_irlaser",nil,15000],
					    ["BWA3_G27",nil,45000],
						["BWA3_MG5",nil,100000],
						["BWA3_G36_AG",nil,45000],
						["F_40mm_White",nil,10000]
					]
				];
			};
		};
	};	
	
	case "ISA5":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Soldat"};
			case (!license_cop_isa): {"Du hast nicht die benoetigte Lizenz!"};
			case (__GETC__(life_coplevel) > 4):
			{
				["Feldwebel",
					[
						["FirstAidKit",nil,475],
						["ItemRadio",nil,150],
						["NVGoggles",nil,6000],
						["BWA3_P8",nil,3500],
						["BWA3_MP7",nil,7500],// Mach mal weiter ich will morgen mit meiner Arbeit fertig sein
                        ["BWA3_G36",nil,25000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_15Rnd_9x19_P8",nil,150],
						["BWA3_30Rnd_556x45_G36",nil,550],
						["BWA3_30Rnd_556x45_G36_Tracer",nil,650],
						["BWA3_40Rnd_46x30_MP7",nil,350],
						["BWA3_G36_LMG",nil,50000],
						["BWA3_MG4",nil,85000],	
                        ["BWA3_optic_RSAS",nil,15000],
						["BWA3_optic_Aimpoint",nil,15000],
						["BWA3_optic_NSV600",nil,15000],
						["BWA3_optic_IRV600",nil,15000],
						["BWA3_optic_NSV80",nil,15000],
						["BWA3_optic_NSA80",nil,15000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_optic_ZO4x30_NSV",nil,15000],
						["BWA3_optic_ZO4x30_IRV",nil,15000],
						["BWA3_optic_Shortdot",nil,15000],
						["BWA3_optic_20x50",nil,15000],
						["BWA3_optic_20x50_NSV",nil,15000],
						["BWA3_optic_24x72",nil,15000],
						["BWA3_optic_24x72_NSV",nil,15000],
						["BWA3_acc_LLM01_irlaser",nil,15000],
					    ["BWA3_G27",nil,45000],
						["BWA3_MG5",nil,100000],
						["BWA3_G36_AG",nil,45000],
						["F_40mm_White",nil,10000],
						["BWA3_G27_AG",nil,45000],
						["BWA3_G36K_AG",nil,100000],
						["BWA3_G28_Standard",nil,100000],
						["BWA3_200Rnd_556x45",nil,3500],
						["BWA3_120Rnd_762x51",nil,4500],
						["BWA3_100Rnd_556x45_G36",nil,1500],
						["BWA3_20Rnd_762x51_G28_Tracer",nil,10000],
						["BWA3_20Rnd_762x51_G28",nil,1000],
						["BWA3_20Rnd_762x51_G28",nil,900],
						["BWA3_G82",nil,1200000],
						["BWA3_10Rnd_127x99_G82",nil,12000],
						["BWA3_10Rnd_127x99_G82_Raufoss",nil,12000]
											
					]
				];
			};
		};
	};	
	
	case "BWS":
	{
		switch(true) do
		{
			case (!license_civ_BWS): {"Du gehoerst nicht zu Blackwater Security!"};
			
			{
				["BWS Shop",
					[
						["FirstAidKit",nil,950],
						["ItemGPS",nil,1500],
						["ItemRadio",nil,150],
						["ToolKit",nil,750],
						["NVGoggles",nil,12000]
																
					]
				];
			};
		};
	};	
	
	case "BWSW":
	{
		switch(true) do
		{
			case (!license_civ_BWS): {"Du gehoerst nicht zu Blackwater Security!"};
			
			{
				["BWS Waffen",
					[
						["FirstAidKit",nil,950],
						["ItemGPS",nil,1500],
						["ItemRadio",nil,150],
						["ToolKit",nil,750],
						["NVGoggles",nil,12000]
																
					]
				];
			};
		};
	};
	
	case "adacgen":
    {
        switch(true) do    
        {
            case (playerSide != east): {"Du bist kein ADAC!"};
            default
            {
                ["ADAC Zubehör",
                    [
                        ["Binocular",nil,150],
                        ["ItemGPS",nil,100],
                        ["ToolKit",nil,250],
						["Medikit",nil,500],
                        ["FirstAidKit",nil,150],
                        ["NVGoggles",nil,2000]
                    ]
                ];
            };
        };
    };

		/*	case (__GETC__(life_coplevel) > 2):
			{
				["Hauptgefreiter",
					[
						["BWA3_P8",nil,3500],
						["BWA3_MP7",nil,7500],// Mach mal weiter ich will morgen mit meiner Arbeit fertig sein
                        ["BWA3_G36",nil,25000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_15Rnd_9x19_P8",nil,150],
						["BWA3_30Rnd_556x45_G36",nil,550],
						["BWA3_30Rnd_556x45_G36_Tracer",nil,650],
						["BWA3_40Rnd_46x30_MP7",nil,350]
					]
				];
			};

			case (__GETC__(life_coplevel) > 3):
			{
				["Stabsgefreiter",
					[
                        ["BWA3_G36_LMG",nil,50000],
						["BWA3_MG4",nil,85000],	
                        ["BWA3_optic_RSAS",nil,15000],
						["BWA3_optic_Aimpoint",nil,15000],
						["BWA3_optic_NSV600",nil,15000],
						["BWA3_optic_IRV600",nil,15000],
						["BWA3_optic_NSV80",nil,15000],
						["BWA3_optic_NSA80",nil,15000],
						["BWA3_optic_ZO4x30",nil,15000],
						["BWA3_optic_ZO4x30_NSV",nil,15000],
						["BWA3_optic_ZO4x30_IRV",nil,15000],
						["BWA3_optic_Shortdot",nil,15000],
						["BWA3_optic_20x50",nil,15000],
						["BWA3_optic_20x50_NSV",nil,15000],
						["BWA3_optic_24x72",nil,15000],
						["BWA3_optic_24x72_NSV",nil,15000],
						["BWA3_acc_LLM01_irlaser",nil,15000]
					]
				];
			};	
				
				case (__GETC__(life_coplevel) > 4):
			{
				["Unteroffizier",
					[
                        ["BWA3_G27",nil,45000],
						["BWA3_MG5",nil,100000],
						["BWA3_G36_AG",nil,45000],
						["F_40mm_White",nil,10000]
						
					]
				];
			};	
				
				
				
				case (__GETC__(life_coplevel) > 5):
			{
				["Feldwebel",
					[
                        ["BWA3_G27_AG",nil,45000],
						["BWA3_G36K_AG",nil,100000],
						["F_40mm_White",nil,10000]
					]
				];	
			};*/	
};
