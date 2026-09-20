// Inherit the parent event
event_inherited();

price = 6 + power(obj_mineManager.diggingSpeedLvl + 4, 3);
voice = 1.4;
content = "You ! My friend ! Come close !\n"+string(price) +" $ to tonify your digging speed !";
content = string_wrap(content, textWidth);