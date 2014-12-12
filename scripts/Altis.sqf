//

if (isServer) then {
	fn_getBuildingstospawnLoot = compile preProcessFileLineNumbers "\x\addons\infiSTAR\scripts\LSpawner\fn_LSgetBuildingstospawnLoot.sqf"; 
	LSdeleter = compile preProcessFileLineNumbers "\x\addons\infiSTAR\scripts\LSpawner\LSdeleter.sqf";
	execVM "\x\addons\infiSTAR\scripts\LSpawner\Lootspawner.sqf";
};