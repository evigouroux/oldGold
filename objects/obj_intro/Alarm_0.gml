if (currentID >= array_length(content)) {
	audio_stop_sound(let_s_ride);
	room_goto(rm_main);
}
else {
	currentID ++;
	if (currentID < array_length(content)) {
		current = string_wrap(content[currentID], textWidth);
		currentChar = 0;
	}
}