enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";
"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this select 1];
};
//Start server fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};

StartProgress = true;

SLX_XEH_EXCL_CLASSES=["B_Heli_Light_01_F","B_Heli_Transport_01_F","B_MRAP_01_F","B_Quadbike_01_F","B_Truck_01_transport_F","B_G_Van_01_transport_F","O_Heli_Light_02_unarmed_F","O_MRAP_02_F","O_Quadbike_01_F","O_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_02_box_F","O_G_Van_01_transport_F","I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","I_Boat_Armed_01_minigun_F","I_SDV_01_F","I_G_Van_01_transport_F","C_Offroad_01_F","C_Offroad_01_repair_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F","C_Heli_Light_01_civil_F","B_Boat_Armed_01_minigun_F","C_Boat_Civil_01_police_F"];