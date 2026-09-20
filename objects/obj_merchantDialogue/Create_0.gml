// Inherit the parent event
event_inherited();

prices = [25, 50, 50, 75, 100];
voice = 1.4;

if (obj_mineManager.diggingSpeedLvl >= array_length(prices)) {
	choice = false;
	content = "You bought everything I had, friend !\n I'm all out !";
	content = string_wrap(content, textWidth);
}
else {
	price = prices[obj_mineManager.diggingSpeedLvl];
	content = "You ! My friend ! Come close !\n"+string(price) +" $ to tonify your digging speed !";
	content = string_wrap(content, textWidth);
}