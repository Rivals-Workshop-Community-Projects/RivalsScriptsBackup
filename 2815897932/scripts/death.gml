// called when the character gets KO'd

magic = 6
move_cooldown[AT_NSPECIAL] = 0

with (asset_get("oPlayer")) {
	if (stagger && stagger_ID == other.id) {
		stagger = false;
	}
}