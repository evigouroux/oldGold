
if (descending) {
	exit;	
}

if (room == rm_camp) {
	exit;
}
else {
	if (!onCooldown) {
		equiped = secondary;
		onCooldown = true;
		with(secondary) {
			event_user(0);	
		}
	}
}