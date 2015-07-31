#include <macro.h>
/*
	File: fn_initSkin.sqf
	
	Description:
	Skin changer
*/
while {true} do
	{
	if((__GETC__(life_coplevel) == 1) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei1.jpg"];
		};
	};
	if((__GETC__(life_coplevel) == 2) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei1.jpg"];
		};
	};
	if((__GETC__(life_coplevel) == 3) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei3.paa"];
		};
	};
	if((__GETC__(life_coplevel) == 4) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei3.paa"];
		};
	};
	if((__GETC__(life_coplevel) == 5) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei3.paa"];
		};
	};
	if((__GETC__(life_coplevel) == 6) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei3.paa"];
		};
	};
	if((__GETC__(life_coplevel) == 7) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\Polizei7.jpg"];
		};
	};
	if((license_cop_sek) && (playerside) == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\sek.jpg"];
		};
	};

	if(playerSide == independent) then
	{
		if (uniform player == "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal[0,"textures\uniform_medic.paa"];
		};
	};
	if(playerSide == east) then
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\adac_uniform.paa"];
		};
	};
	sleep 30;//safe some cpu
};