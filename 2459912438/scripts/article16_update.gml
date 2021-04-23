//
timer++;

var collision = place_meeting(x, y, pHitBox);
if collision {
	var hitbox = instance_place(x, y, pHitBox);
	if hitbox.player_id != player_id {
	    was_hit = true;
	    if hit_timer == 0 {
		    hitbox.player_id.has_hit = true;
		    hitbox.player_id.hitpause = true;
		    hitbox.player_id.hitstop_full = 6;
		    hitbox.player_id.hitstop = 6;
		    hitbox.player_id.old_vsp = hitbox.player_id.vsp;
            hitbox.player_id.old_hsp = hitbox.player_id.hsp;
	    }
	}
}

if was_hit {
	if hit_timer == 0 || hit_timer == 3 {
		image_index++;
	}
	if hit_timer == 0 {
		sound_play(sound_get("chk"))
	}
	hit_timer++;
}

if hit_timer == 20 {
	was_hit = false;
	hit_timer = 0;
}

//spawn beams
if timer == 1 {
	spawn_beam(1, 35, 1);
	spawn_beam(1, -40, 2);
}

if timer > delay && (timer - delay) mod rate == 0 {
	var col = random_func_2(3, 2, true);
	spawn_beam(col, 105, 0);
}

#define spawn_beam(colour, rot, pos)
var beam = instance_create(x + 35, y + 90, "obj_stage_article", 17);
	beam.colour = colour;
	beam.image_index = colour;
	beam.image_angle = rot;
	beam.ball_id = id;
	beam.position = pos;
	beam.sprite_index = asset_get("empty_sprite");