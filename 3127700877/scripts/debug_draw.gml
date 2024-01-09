// debug_draw.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#debug-draw-gml
// Meant for development, not final characters.
// Drawn in front of everything else.

if(has_rune("M")){
    shader_start();
    var x_anchor = view_get_xview() + 150;
    var y_anchor = view_get_yview() + 150;
    var alpha = .4;
    
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor, y_anchor, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 300, y_anchor, -1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 600, y_anchor, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 900, y_anchor, -1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor, y_anchor + 300, 1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 300, y_anchor + 300, -1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 600, y_anchor + 300, 1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 900, y_anchor + 300, -1, -1, 0, c_white, alpha);
    shader_end();
}

// if get_match_setting(SET_HITBOX_VIS){
//     with pHitBox {
// 	    if (orig_player = other.player) {
// 		    if type == 2 && collision_sprite != -1 {
// 	            draw_sprite_ext(collision_sprite, 0, x, y, spr_dir, 1, 0, c_white, .5);
// 		    }
// 		}
// 	}
// }

draw_colored_hitboxes();

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
{
    if get_match_setting(SET_HITBOX_VIS) {
        var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) if (player_id == other && draw_colored) array_push(hitboxes,self)
        arr_len = array_length(hitboxes);
        if arr_len > 0 {
            selection_sort_priority(hitboxes);
            for (var i = 0; i < arr_len; i++) with hitboxes[i] {
                draw_sprite_ext(draw_spr, shape, x, y, image_xscale,image_yscale,0,col,0.5);
                __kb_angle = kb_angle == 361 ? 45 : kb_angle;
                angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
                draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
            }
        }
        //hide base hurtbox display
        hurtboxID.image_alpha = 0;
        //redraw hurtbox OVER hitbox display for visibility
        if state_cat == SC_HITSTUN { //turn hurtbox yellow
            gpu_set_fog(true, c_yellow, 0, 999)
        }
        draw_sprite_ext(hurtboxID.sprite_index, hurtboxID.image_index, x, y, hurtboxID.image_xscale, hurtboxID.image_yscale, 0, -1, 0.5)
        gpu_set_fog(false, c_white, 0, 999)
    }
}
#define selection_sort_priority(arr)
//basic selection sort alg
var arr_len = array_length(arr), jmin, store;
for (var i = 0; i < arr_len-1; i++) {
    jmin = i;
    for (var j = i+1; j < arr_len; j++) {
        if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
    }
    if (jmin != i) {
        store = arr[@i];
        arr[@i] = arr[@jmin];
        arr[@jmin] = store;
    }
}