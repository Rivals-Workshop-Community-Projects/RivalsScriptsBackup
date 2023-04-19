vsp = 3 * player_id.free;
spr_dir = player_id.spr_dir;
grav_sp = 0.4;
move_speed = 4;
sprite_index = sprite_get("heaveho");
mask_index = sprite_get("heaveho_mask");

state = "idle";
state_timer = 0;
lock_state = false;

ignores_walls = false;

throw_aspeed = (4 / 20);
yeet_speed = -10;
depth = player_id.depth - 3;

whir = player_id.heaveho_whir;
whirplaying = false;
explosionary = false;

/*
with oPlayer {
    if player = other.player && has_rune("K") {
		other.explosionary = true;
	}
}
*/

