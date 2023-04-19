trace("hitbox_init was called");

switch (attack) {
case AT_DSPECIAL:
case AT_DSTRONG:
fx_particles = 2;
break;

case AT_FSPECIAL:
fx_particles = 2;
if hbox_num == 1 {
    player_id.bomb_exists = self;
    bounced = false;
    bouncetime = 0;
	destroy_fx_saved = player_id.bomb_explode;
	if (player_id.bomb_numbering >= 3.5) {
        sprite_index = sprite_get("fspecial_bullyproj");
		mask_index = sprite_get("fspecial_bombproj");
        destroy_fx_saved = player_id.bullybomb_explode;
    }
	with player_id {
	    sound_play(sound_get("sm64_fuse_light"));
	    sound_play(sm64_fuse, true, noone, 1, 1);
		if has_rune("B") {
		    other.is_big = true;
		} else {
		    other.is_big = false;
		}
	}
}
break;

case AT_FSTRONG:
fx_particles = 2;
if hbox_num == 1 {
    player_id.whomp_id = self;
    eergh_hitpause = 0;
    vsp = -1;
	hsp = 1 * spr_dir;
	with player_id {
		if has_rune("N") {
            sound_play(sound_get("whomp"), false, noone, 1, 0.7);
			other.is_big = true;
	    } else {
		    sound_play(sound_get("whomp"));
			other.is_big = false;
		}
	}
    player_id.whomp_hashit = false;
    player_id.move_cooldown[AT_FSTRONG] = 30;
}
break;

case AT_DSTRONG:
if hbox_num == 3 {
    player_id.thwomp_id = self;
    eergh_hitpause = 0;
} else if hbox_num = 2 {
    fx_particles = 1;
} else {
    fx_particles = 2;
}
break;

case AT_USTRONG:
if hbox_num = 4 {
    sound_play(sound_get("star"), false, noone, 0.5, 1);
}
break;

case 49:

actual_sprite_index = sprite_get("fs_wario_apparition");
draw_alpha = 0;
// array of afterimages
w_ai_tot = 4; // total number of afterimages
w_ai_cur = 0; // current number of images to draw
w_ai_ind = 0; // which index to replace in the rolling buffer
w_ai_freq = 8; // higher number --> less frequent updates to after image buffer
w_ai_hue = 0; // trail hue
w_ai_col = $0000FF; // trail color
w_afterimages = array_create(w_ai_tot, 0);
for (var i = 0; i < w_ai_tot; i += 1) {
    w_afterimages[i] = {
        sprite: asset_get("empty_sprite"),
        subimg: 0,
        x: x,
        y: y,
        xscale: draw_xscale,
        yscale: draw_yscale,
        rot: proj_angle,
        alpha: draw_alpha
    }
}
break;
}
