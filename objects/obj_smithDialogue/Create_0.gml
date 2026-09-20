// Inherit the parent event
event_inherited();

prices = [50, 100, 150, 200, 250];
voice = 0.6;
charSpeed = 0.9;


if (obj_mineManager.diggingPowerLvl >= array_length(prices)) {
	choice = false;
	content = "I've done all I could lad.\nThanks for the business.";
	content = string_wrap(content, textWidth);
}
else {
	price = prices[obj_mineManager.diggingPowerLvl];
	content = "Fork over "+string(price) + " bucks lad.\nI'll make that pickaxe hit harder.";
	content = string_wrap(content, textWidth);
}