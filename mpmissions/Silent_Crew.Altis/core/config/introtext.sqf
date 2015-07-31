_onScreenTime = 6;
playSound "intro";
sleep 5; //Wait in seconds before the credits start after player is in-game
 
_role1 = "";
_role1names = ["Nach dem in deinem Heimatland Stratis,"];
_role2 = "";
_role2names = ["ein Bürgerkrieg ausbrach..."];
_role3 = "";
_role3names = ["und eine Verfolgung deiner Glaubensrichtung begann,"];
_role4 = "";
_role4names = ["hast du beschlossen alles auf eine Karte zu setzen..."];
_role5 = "";
_role5names = ["und hast alles was du hattest..."];
_role6 = "";
_role6names = ["für ein Ticket auf einem Flüchtlingsboot ausgegeben."];
_role7 = "";
_role7names = ["Nachdem Du die Insel verlassen hattest..."];
_role8 = "";
_role8names = ["ging das Boot unter."];
_role9 = "";
_role9names = ["Du konntest dich in ein Schlauchboot retten..."];
_role10 = "";
_role10names = ["und machst dich nun auf den Weg in eine ungewisse Zukunft..."];
_role11 = "";
_role11names = ["in das im Wiederaufbau befindliche Altis."];
_role12 = "";
_role12names = ["Deine Zukunft liegt in deiner Hand!"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#f2cb0b' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.90' color='#FF0000' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 1.47,0.5], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 1.2,0.5], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names]
];