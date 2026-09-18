
if (currentChar < string_length(content)){
	currentChar = string_length(content)-1;
}
else if (choice && choiceYes) {
	event_user(0);	
}
else {
	event_user(1);	
}