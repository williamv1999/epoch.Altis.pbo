/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 10; //<-- How long is the text on the screen for ? Recommended: 1

sleep 20; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to ";
_role1names = ["SS Gaming Epoch Mod Altis"];
_role2 = "Admin Team:";
_role2names = ["Always ON"];


{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#0000FF' align='right'>%1<br /> </t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.75
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names]
];