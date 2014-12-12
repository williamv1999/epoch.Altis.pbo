waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Goatboy
	Description: Puts a small bar in the bottom right of screen to display in-game FPS

*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["[S&S Gaming] Loading Server info...", _rscLayer];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | S&S Gaming | Top Dallas Server", round diag_fps, round(720-(serverTime / 60))];
	}; 
};