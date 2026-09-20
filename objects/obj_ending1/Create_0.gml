content = [
	"Having bought his father's land, Old Sam could finally relax",
	"A though still gnawed at his mind : despite his best effort he could not",
	"find the cache of Elder Sam. The mystery of his disappearance remained.",
	"Old Sam spent his last, simples years on this earh mining more gold",
	"And taking care of his son : Young Sam.",
	"Ending 1 : Acceptance.",
];

currentID = 0
textWidth = sprite_width -12;
current =content[currentID];
currentChar = 1;
charSpeed = 1;
ready = false

alarm_set(1, game_get_speed(gamespeed_fps));
audio_play_sound(let_s_ride, 1, false);