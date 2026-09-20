// Inherit the parent event
event_inherited();

voice = 1.1;
charSpeed = 1;
price = power(obj_mineManager.pistolLvl + 5, 3);
content = "Howdy mate. "+string(price) + " smacker to upgrade your peashooter.";
content = string_wrap(content, textWidth);