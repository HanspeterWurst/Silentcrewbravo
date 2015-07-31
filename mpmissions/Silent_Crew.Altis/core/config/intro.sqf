private["_pos","_veh","_ai","_waypoint","_wait","_side"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		[] call life_fnc_spawnMenu;
	};
	case civilian:
	{
		if(!license_civ_perso) then {
			cutText [format["Willkommen %1...",profileName],"BLACK FADED", 10];
			disableUserInput true;
			0.1 fadeSound 0;
			player switchCamera "External";
			player allowdamage false;
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			_Number = random 101;
			_mygroup = createGroup civilian;
			_aipos = getpos player;

			if (_Number < 20) then 
			{
			_pos = getMarkerPos "Start1";
			_veh = "C_Rubberboat" createvehicle _pos;
			_ai = "i_g_survivor_F" createunit [_aipos, _mygroup, "this moveinany _veh"];
			player moveInCargo _veh;
			_veh setVehicleLock "LOCKED";
			_waypoint = _mygroup addWaypoint [getMarkerPos "waypoint_1", 0];
			_waypoint setWaypointType "MOVE";
			};

			if ((_Number > 19) AND (_Number < 40)) then 
			{
			_pos = getMarkerPos "Start2";
			_veh = "C_Rubberboat" createvehicle _pos;
			_ai = "i_g_survivor_F" createunit [_aipos, _mygroup, "this moveinany _veh"];
			player moveInCargo _veh;
			_veh setVehicleLock "LOCKED";
			_waypoint = _mygroup addWaypoint [getMarkerPos "waypoint_1", 0];
			_waypoint setWaypointType "MOVE";
			};

			if ((_Number > 39) AND (_Number < 60)) then 
			{
			_pos = getMarkerPos "Start3";
			_veh = "C_Rubberboat" createvehicle _pos;
			_ai = "i_g_survivor_F" createunit [_aipos, _mygroup, "this moveinany _veh"];
			player moveInCargo _veh;
			_veh setVehicleLock "LOCKED";
			_waypoint = _mygroup addWaypoint [getMarkerPos "waypoint_1", 0];
			_waypoint setWaypointType "MOVE";
			};

			if ((_Number > 59) AND (_Number < 80)) then 
			{
			_pos = getMarkerPos "Start4";
			_veh = "C_Rubberboat" createvehicle _pos;
			_ai = "i_g_survivor_F" createunit [_aipos, _mygroup, "this moveinany _veh"];
			player moveInCargo _veh;
			_veh setVehicleLock "LOCKED";
			_waypoint = _mygroup addWaypoint [getMarkerPos "waypoint_1", 0];
			_waypoint setWaypointType "MOVE";
			};

			if (_Number > 79) then 
			{
			_pos = getMarkerPos "Start5";
			_veh = "C_Rubberboat" createvehicle _pos;
			_ai = "i_g_survivor_F" createunit [_aipos, _mygroup, "this moveinany _veh"];
			player moveInCargo _veh;
			_veh setVehicleLock "LOCKED";
			_waypoint = _mygroup addWaypoint [getMarkerPos "waypoint_1", 0];
			_waypoint setWaypointType "MOVE";
			};

			_veh allowdamage false;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			sleep 10;
			cutText ["...auf Silentcrewbravo RPG","BLACK FADED", 11];
			sleep 10;
			10 fadeSound 0.1;
			cutText ["","BLACK IN", 10];
			[] execVM "core\config\introtext.sqf";
			disableUserInput false;
			sleep 120;
			player setpos getmarkerpos "civ_spawn_buero";
			20 fadeSound 1;
			sleep 10;
			player allowdamage true;
			sleep 10;
			_veh allowdamage true;
			_veh setDamage 1;
		}
			else
		{
			[] call life_fnc_spawnMenu;
		};
	};
	case independent: 
	{
		[] call life_fnc_spawnMenu;
	};
	
	case east:
	{
		[] call life_fnc_spawnMenu;
	};
};
	



