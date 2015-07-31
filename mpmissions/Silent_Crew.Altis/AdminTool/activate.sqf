waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198085019334","76561197993415002","76561198043398542","76561198140160221"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
};