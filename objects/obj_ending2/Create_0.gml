content = [
	"Having bought his father's land, Old Sam could finally relax",
	"But although he could, he no longer wanted to.",
	"Now at the head of a thriving community he only wished for more.",
	"Old Sam spent his last, prosperous years on this earth accumulating his fortune",
	"His son, Young Sam, would inherit everything and become a rich man.",
	"He would eventually squander it away however, as they usually do.",
	"Ending 2 : Captain of industry.",
];

currentID = 0
textWidth = sprite_width -12;
current =content[currentID];
currentChar = 1;
charSpeed = 1;
ready = false

alarm_set(1, game_get_speed(gamespeed_fps));
audio_play_sound(let_s_ride, 1, false);