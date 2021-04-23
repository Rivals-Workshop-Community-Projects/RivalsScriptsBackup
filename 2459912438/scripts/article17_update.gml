//
timer++;

if timer == 1 && ball_id.timer > 20 {
	sprite_index = asset_get("empty_sprite");
} else if timer == 5 || ball_id.timer < 20 {
	sprite_index = sprite_get("disco_ball_beam");
}

image_index = colour;

can_deal_damage = true;

if ball_id.was_hit && ball_id.hit_timer == 1 {
	colour = colour == 1 ? 0 : 1;
}

if ball_id.timer > ball_id.delay && (ball_id.timer - ball_id.delay) mod ball_id.rate == 0 {
	rotate = true;
}

image_yscale = 1;
while place_meeting(x, y, obj_stage_article_solid) || place_meeting(x, y, asset_get("par_block")) {
	image_yscale -= 0.01;
}

image_yscale += 0.02;

if rotate {
	if image_angle > angles[position + 1] {
		image_angle -= ball_id.spd;
	} else {
		rotate = false;
		position++;
		
		if position == 3 {
			instance_destroy(id);
		}
	}
}