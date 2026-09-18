if (currentID >= array_length(content)) {
	room_goto(rm_main);
}
else {
	currentID ++;
	if (currentID < array_length(content)) {
		current = string_wrap(content[currentID], textWidth);
		currentChar = 0;
	}
}