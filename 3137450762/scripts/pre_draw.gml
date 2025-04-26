
// fun mario-maker-style shadow. Maybe for last stock scenarios?
//draw_sprite_ext(sprite_index,image_index,x+10, y,spr_dir,1,0,c_black,0.5);

gpu_set_fog(1, afterimage_colour, 0, 1);
gpu_set_blendmode(bm_add);

var afterimage_number = array_length(uspecial_last_positions);
if afterimage_number > 0 {
  //shader_start();
  for (var i = 0; i < array_length(uspecial_last_positions); i += 1) {
    var ulp = uspecial_last_positions;
    var opacity = max(0, min(1, 2 - (uspecial_afterimage_timer-ulp[i][5])/8))
	if activate_multicolour { gpu_set_fog(1, ulp[i][6], 0, 1); }

    draw_sprite_ext(ulp[i][0],ulp[i][1],ulp[i][2]-10*spr_dir,ulp[i][3],ulp[i][4]*2,1*2,0,magnet_colour,opacity*0.9);

  }
}

if activate_multicolour { gpu_set_fog(1, multicolour_colours[0], 0, 1); }

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& attack == AT_DSPECIAL_2
&& instance_exists(myChair) && window <= 3 {
  draw_sprite_ext(pullchair_field,(window_timer/3)-1,x-2*spr_dir, y-114,spr_dir,1,0,c_white,myChair.outline_opacity);
}

gpu_set_blendmode(bm_normal);
gpu_set_fog(0, c_white, 0, 0);

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& attack == AT_DSPECIAL_2
&& instance_exists(myChair) && window <= 3 {
  shader_start();
  draw_sprite_ext(pullchair_field,(window_timer/3),x-2*spr_dir, y-114,spr_dir,1,0,c_white,myChair.outline_opacity);
  shader_end();
  if window_timer == 11 {
    pullchair_loops += 1;
    if pullchair_loops >= 3 pullchair_loops = 0;
  }
}



if instance_exists(myChair)
&& ((myChair.shine_timer > 0) ||
((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& (attack == AT_DSPECIAL_2 || (attack == AT_USPECIAL && instance_exists(grab_victim) && myChair == grab_victim)))) {

  with myChair {
    // draw afterimages
	if other.activate_multicolour {
		gpu_set_fog(1, other.multicolour_colours[1], 0, 1);
	} else {
		gpu_set_fog(1, other.afterimage_colour, 0, 1);
	}

    gpu_set_blendmode(bm_add);
	var effect_colour = c_white;
	if other.activate_multicolour { gpu_set_fog(1, other.multicolour_colours[0], 0, 1); }
    draw_sprite_ext(sprite_copy_index,draw_frame,draw_x-hsp*2,draw_y-vsp*2,spr_dir,1,0,c_white,outline_opacity*0.66);
	if other.activate_multicolour { gpu_set_fog(1, other.multicolour_colours[1], 0, 1); }
    draw_sprite_ext(sprite_copy_index,draw_frame,draw_x-hsp*4,draw_y-vsp*4,spr_dir*0.9,0.9,0,c_white,outline_opacity*0.44);
	if other.activate_multicolour { gpu_set_fog(1, other.multicolour_colours[2], 0, 1); }
    draw_sprite_ext(sprite_copy_index,draw_frame,draw_x-hsp*6,draw_y-vsp*6,spr_dir*0.8,0.8,0,c_white,outline_opacity*0.22);

    //outline
    draw_sprite_ext(sprite_outline_index,draw_frame,draw_x-1*spr_dir,draw_y,spr_dir,1,drangle,c_white,outline_opacity*2);

    gpu_set_blendmode(bm_normal);
    gpu_set_fog(0, c_white, 0, 0);


    // Draw actual chair
    //draw_sprite_ext(sprite_visible_index,pre_draw_index,x,draw_y,spr_dir,1,0,chair_color,1);
    with other {
      shader_start();
      with myChair {
        draw_sprite_ext(sprite_copy_index,draw_frame,draw_x,draw_y,spr_dir,1,drangle,chair_color,1);
        if shine_timer > 0 {
    			with player_id { if activate_multicolour or alt_palette == 13 {
            gpu_set_blendmode(bm_add);
            if riptide_active { shader_end(); }
          }}
          if draw_frame >= 5 && draw_frame <= 7 {
            draw_sprite_ext(chair_shine_index,(shine_timer_max-shine_timer)/2,draw_x,draw_y,spr_dir,1,drangle,c_white,1);
          }
          gpu_set_blendmode(bm_normal);
        }
      }
      shader_end();
    }
  }
}
