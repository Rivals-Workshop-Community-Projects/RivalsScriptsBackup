// =============================================================================
#macro FACE_L_PUPIL         0
#macro FACE_L_EYELID_T      1
#macro FACE_L_EYELID_B      2
#macro FACE_R_PUPIL         3
#macro FACE_R_EYELID_T      4
#macro FACE_R_EYELID_B      5
#macro FACE_MOUTH           6
// =============================================================================

// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

shader_start();
if (move_cooldown[AT_DATTACK] == 0) {
    draw_sprite(sprite_get("hudicons"), 0, temp_x+184, temp_y+-14);
}

if (move_cooldown[AT_FSPECIAL] == 0) {
    draw_sprite(sprite_get("hudicons"), 1, temp_x+158, temp_y+-14);
}
shader_end();


//FINAL SMASH

if fs_start > 0 {
    if fs_start > 15 && fs_start <= 20 {
		draw_sprite(sprite_get("nestedsim_start"), 0, 0, 0 );
	}
	if fs_start > 10 && fs_start <= 15 {
		draw_sprite(sprite_get("nestedsim_start"), 1, 0, 0 );
	}
	if fs_start > 5 && fs_start <= 10 {
		draw_sprite(sprite_get("nestedsim_start"), 2, 0, 0 );
	}
	if fs_start > 0 && fs_start <= 5 {
		draw_sprite(sprite_get("nestedsim_start"), 3, 0, 0 );
	}
}

if cutscene > 0 {
    if cutscene < 6 {
    	draw_sprite_ext(sprite_get("nestedsim"), nested_anim, 0, 0, 1, 1, 0, c_white, 0.5  );
	}
	else {
		draw_sprite_ext(sprite_get("nestedsim"), nested_anim, 0, 0, 1, 1, 0, c_white, 1  );
	}
	
	draw_face();
	
	with (fsmash_target) {
		shakex = random_func( 0, 20, true );
		shakey = random_func( 2, 20, true );
        shader_start();
        draw_sprite_ext(sprite_index, 1, 460 + shakex, 300 + shakey, 2 + small_sprites*2 , 2 + small_sprites*2, -10 + shakex, c_white, 1);
		shader_end();
	}
	
	if nesthit_anim = 0 {
		hitx = random_func( 3, 80, true );
		hity = random_func( 4, 80, true );
	}
	
	shader_start();
    draw_sprite(sprite_get("square_hfx"), nesthit_anim, 450 + hitx , 220 + hity );
	shader_end();
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);


#define draw_face

var face_size_mult = 1.5;

// update some face stuff
face_alpha = lerp(face_alpha, face_target_alpha, 0.1);
face_angle = 7*sin(current_time/1500);
face_x = lerp(face_x, face_target_x, 0.1);
face_y = lerp(face_y, face_target_y, 0.1);
mouth_subimg = (mouth_subimg + 0.25) % 5;

// grab some info
var alpha = face_alpha;
var f_angle = face_angle;
var f_x = face_x;
var f_y = face_y;

// silly way of making a random-feeling wiggle frequency
var should_adjust_draw_target = ((floor(current_time / 10) % 200) % 71 == 0);

// loop through parts of face
for (var i = 0; i < array_length(face); i+=1) {
    with face[i] {
        // lerp values
        x = lerp(x, target_x, 0.2);
        y = lerp(y, target_y, 0.2);
        angle += angle_difference(target_angle, angle) * 0.2;
        
        // set target draw offsets
        if i == FACE_L_PUPIL || i == FACE_R_PUPIL { 
        	// do nothing with eyes
        }
        else if should_adjust_draw_target { // everything else just wiggles
            var rand_ind = (i + other.current_time) % 13;
            draw_target_offset_x = 5 - random_func(rand_ind, 11, true);
            draw_target_offset_y = 5 - random_func_2(rand_ind, 11, true);
            draw_target_offset_angle = 3 - random_func_2(rand_ind + 1, 5, true);
        }
        
        // lerp draw offsets to targets
        draw_offset_x = lerp(draw_offset_x, draw_target_offset_x, 0.1);
        draw_offset_y = lerp(draw_offset_y, draw_target_offset_y, 0.1);
        draw_offset_angle += angle_difference(draw_target_offset_angle, draw_offset_angle) * 0.1;
        
        // draw
        var subimg = (i == FACE_MOUTH ? other.mouth_subimg : 0);
        var rotated_x = y*dsin(f_angle) + x*dcos(f_angle);
        var rotated_y = y*dcos(f_angle) - x*dsin(f_angle);
        var xx = f_x + (rotated_x + draw_offset_x) * face_size_mult;
        var yy = f_y + (rotated_y + draw_offset_y) * face_size_mult;
        var rot = f_angle + angle + draw_offset_angle;
        draw_sprite_ext(sprite, subimg, xx, yy, 2*face_size_mult, 2*face_size_mult, rot, c_white, alpha);
    }
}