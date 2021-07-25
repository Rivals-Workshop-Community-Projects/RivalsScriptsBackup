//Landing from fair.
if (!free && fair_wall_times > 0) {
    fair_wall_times = 0;
}

if ((!free || state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN || state == PS_HITSTUN_LAND) && uspecial_used) {
    uspecial_used = false;
}

//NSPECIAL cooldown

if (instance_exists(nspecial_article)) {
	if (nspecial_article.window == 3 || nspecial_article.window == 5 || nspecial_article.window == 7) {
    	move_cooldown[AT_NSPECIAL] = 30;
	}
}

if (uspecial_used && free)
{
	move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_USPECIAL_GROUND] = 2;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	spr_angle = 0;
}

if (instance_exists(nspecial_article)) {
    if (nspecial_article.window == 1  && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)) {
        nspecial_article.window = 8;
        nspecial_article.window_timer = 0;
    }
}

//New FSPECIAL handler
with (oPlayer) {
	if ("anthem_marked" not in self) {
		anthem_marked = false;
		anthem_marked_id = noone;
		anthem_marked_timer = 0;
		anthem_marked_amount = 0;
		anthem_marked_hboxes = array_create(other.fspecial_amount_max, noone);
	}
	if (anthem_marked) {
		if (anthem_marked_timer > 0)
			anthem_marked_timer --;
		else {
			anthem_marked = false;
			anthem_marked_timer = 0;
			anthem_marked_amount = 0;
		}
	}
	if (state == PS_RESPAWN && anthem_marked) {
		anthem_marked = false;
		anthem_marked_id = noone;
		anthem_marked_timer = 0;
		anthem_marked_amount = 0;
		for (var i = 0; i < array_length(anthem_marked_hboxes); i++) {
			if (instance_exists(anthem_marked_hboxes[i]))
				instance_destroy(anthem_marked_hboxes[i]);
		}
	}
}

//Rivals of Fighter compatibility
if ("superTrue" in self) {
	if (superTrue == 1) {
		superTrue = 0
		
		if (instance_exists(hit_player_obj))
			hit_player_obj.canUseCounterTimer = 500
		
		set_hitbox_value(49, 4, HG_DAMAGE, 75);
		/// X is roughly how many frames until your super finish if it's an attack, it's unessessary for status effect supers
		
		}
}