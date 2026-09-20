// Inherit the parent event
event_inherited();

voice = 0.6;
charSpeed = 0.9;
price = power(obj_mineManager.diggingPowerLvl + 5, 3);
content = "Fork over "+string(price) + " bucks lad.\nI'll make that pickaxe hit harder.";
content = string_wrap(content, textWidth);