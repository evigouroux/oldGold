
if (!descending) {
	x = other.x + tileSize/2;
	y = other.y + tileSize/2;
	zSpeed = 2;
	z += 0.1;
	descending = true;
	audio_play_sound(SFX_jump, 1, false);
	image_index = round(shrinkage * (sprite_get_number(spr_playerShrinking)-1) / 100);
	sprite_index = spr_playerShrinking;
}