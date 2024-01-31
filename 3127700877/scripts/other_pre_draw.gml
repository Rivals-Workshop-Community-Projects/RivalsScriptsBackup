// other_pre_draw.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#other-pre-draw-gml-and-other-post-draw-gml
// Draws BEHIND all OTHER characters

// if(attack == AT_FSPECIAL) {
//     if sprite_get == ("fspecial_proj"){
//     var other_draw = true;
//     }
// }

if(instance_exists(other_player_id) && diseased_id == other_player_id && !fucking_dying_timer){
	if(diseased_timer > diseased_timer_max - 30){
		if other_player_id.genesis draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + (0.5 + random_func_2((sprite_index%200), 2, false)) * spr_dir, image_yscale + 0.5 + random_func_2((sprite_index%200), 2, false), image_angle, other_player_id.glitch_color, 1 - (diseased_timer_max-diseased_timer)/30/1.5);
	}
}