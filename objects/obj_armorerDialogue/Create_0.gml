// Inherit the parent event
event_inherited();

prices = [30, 50, 75, 100, 150];
voice = 1.1;


if (obj_mineManager.pistolLvl >= array_length(prices)) {
	choice = false;
	content = "Won't get any better than that, pal.\nEnjoy your second amendment.";
	content = string_wrap(content, textWidth);
}
else {
	price = prices[obj_mineManager.pistolLvl];
	content = "Howdy mate. "+string(price) + " smacker to upgrade your peashooter.";
	content = string_wrap(content, textWidth);
}