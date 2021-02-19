if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
  switch(attack){
    case AT_DAIR:
      shader_start();
      draw_sprite_ext(sprite_get("powerdunk"), image_index, x, y, spr_dir, 1, 0, -1, 1);
      shader_end();
      break;
    default:
      break;
  }
}



//Blur code we currently don't have permission to use.
//This will remain disabled until we have permission to use it.

current_r = get_color_profile_slot_r(get_player_color(player), 2);
current_g = get_color_profile_slot_g(get_player_color(player), 2);
current_b = get_color_profile_slot_b(get_player_color(player), 2);

current_eye_color = make_color_rgb(current_r, current_g, current_b);

shader_start();

	//MOTION BLUR CODE
if (true == false) //To make it functional, put this in: (cancel_effect_timer > 0)
{
for(var m = 0; m < array_length_1d(blur); m++) {

		if (m == 4 || m == 8 || m == 12 || m == 16){
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
    draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], current_eye_color, _img[8] * _percent);
		}
	}

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_USPECIAL){
            if (window == 2){
                var elec_dir = point_direction(x,y-56,tag_target.x,tag_target.y-20);
                if (spr_dir == -1) elec_dir += 180;
                var elec_dist = point_distance(x,y-56,tag_target.x,tag_target.y-20);

                //since the arm sprite's origin isn't centered, do some math
                if (elec_dist < 7) elec_dist = 7; //needs minimum distance to prevent arcsin errors
                var arm_dir = darcsin(6 / elec_dist);
                arm_dir = elec_dir - arm_dir*spr_dir;
                if (spr_dir == -1) arm_dir += 180;

                if (elec_dist > 64){
                    var rope_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(54, arm_dir);
                    var rope_y = y - 56 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(54, arm_dir);

                    var rope_length = 0;
                    var max_rope_length = point_distance(rope_x, rope_y, tag_target.x, tag_target.y);
                    if (window == 5){
                        var window_length = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
                        max_rope_length = max_rope_length * (window_timer / window_length);
                    }
                    while (rope_length < max_rope_length-54){
						if (window_timer == 2)
                        draw_sprite_ext(sprite_get("uspecial_elec"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
						else
                        draw_sprite_ext(sprite_get("uspecial_elecb"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                        rope_x += lengthdir_x(54, arm_dir);
                        rope_y += lengthdir_y(54, arm_dir);
                        rope_length += 54;
						set_hitbox_value( AT_USPECIAL, 3, HG_HITBOX_X, (tag_target.x-x)*spr_dir	);
						set_hitbox_value( AT_USPECIAL, 3, HG_HITBOX_Y, tag_target.y-y-20);
						set_hitbox_value( AT_USPECIAL, 3, HG_DAMAGE, tag_target.tagged);
                    }
					//if (window_timer == 2)
                    //draw_sprite_ext(sprite_get("uspecial_elec"), 1, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
					//else
                    //draw_sprite_ext(sprite_get("uspecial_elecb"), 1, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                }


            }
        }
    break;
}
}

shader_end();
