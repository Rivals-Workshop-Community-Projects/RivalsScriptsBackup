//post-draw
shader_start()
if sprite_index == sprite_get("parry") && draw_parry {
    draw_sprite_ext(sprite_get("parry_draw"), image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
}

/*
if state_attacking && attack == AT_USTRONG {
    draw_circle_color(x + 60*spr_dir, y - 130, 4, c_white,c_white, false)
}
*/

/*
if sprite_index == sprite_get("fspecial") {
    draw_sprite_ext(sprite_get("fspecial_draw"), image_index, x, y, spr_dir, 1, fspec_angle, c_white, 1)
}
*/

with pHitBox if player_id == other.id && ("rhy_rock" in self) && rhy_rock == true {
    if explode {
        draw_sprite_ext(sprite_index, 0, x, y, spr_dir, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 1, x, y, spr_dir, 1, 0, c_white, explode_timer/50)
        
        gpu_set_alphatestenable(true);
        gpu_set_fog(1, c_white, 0, 1);

        draw_sprite_ext(sprite_index, 0, x, y, spr_dir, 1, 0, c_white, (explode_timer - 10)/30)
        
        gpu_set_fog(0, c_white, 0, 0);
        gpu_set_alphatestenable(false);
    }
}
shader_end()

/*
var num_faults = 0
with obj_article1 if ("is_rhyolis_fault" in self) && is_rhyolis_fault == true && player_id == other.id {
	num_faults++
}
*/

//draw_debug_text(x, y + 10, "num faults: " + string(num_faults))
//draw_debug_text(x, y + 30, "fps: " + string(fps))
