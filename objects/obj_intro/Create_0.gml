content = [
	"My name is Old Sam. I'm a prospector.",
	"My pa, \"Elder Sam\" taught me everythin' I know.",
	"Man owned hisself a mine, under these here mountains.",
	"I know his gold stash is still down there. Ain't nobody found it yet.",
	"I took out a loan, bought the whole dang place, and got ready to work.",
	"I'll pay off that loan, keep this mine fer myself, and dig up that cache.",
	"Wait fer me, Pa...",
	"I'm coming"
];

currentID = 0
textWidth = sprite_width -12;
current =content[currentID];
currentChar = 1;
charSpeed = 1;
ready = false

alarm_set(1, game_get_speed(gamespeed_fps));
audio_play_sound(let_s_ride, 1, false);