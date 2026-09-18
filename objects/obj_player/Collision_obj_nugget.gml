
if (other.z <= 0) {
	audio_play_sound(Pickup2, 1, false);
	obj_mineManager.cash += other.value;
	instance_destroy(other);
}