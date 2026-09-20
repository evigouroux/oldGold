content = [
	"Despite his best effort, Old Sam was not able to repay the loan.",
	"The mining company seized the mine and expelled its denizens.",
	"Shocked and ashamed, Old Sam fled to the mountains.",
	"He was never heard from again...",
	"Ending 0 : Failure.",
];

currentID = 0
textWidth = sprite_width -12;
current =content[currentID];
currentChar = 1;
charSpeed = 1;
ready = false

alarm_set(1, game_get_speed(gamespeed_fps));
audio_play_sound(let_s_ride, 1, false);