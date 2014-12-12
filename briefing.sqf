waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["info","Serverinfo"];
player createDiarySubject ["serverrules","Serverrules"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"",
				"
-Day/Night Cycle<br/>
-Base saving<br/>
-Group saving<br/>
				"
		]
	];

	player createDiaryRecord["info",
		[
			"",
				"
The admin team: <br/>
Admins:  They are on!!!,<br/>

				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"",
				"
- Rule 1. <br/>
- Rule 2.<br/>
- Rule 3.<br/>
- Rule 4.<br/>
- Rule 5.<br/>
				"
		]
	];

