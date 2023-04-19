draw_proj_arrow();
//Credit to Supersonic
#define draw_proj_arrow
if get_match_setting(SET_HITBOX_VIS) {
    var arrowspr = asset_get("knock_back_arrow_spr"), hitboxes = [], arr_len, __kb_angle, angle;
    with (pHitBox) if (player_id == other && type == 2 && (attack == AT_USTRONG && hbox_num != 2 || attack != AT_USTRONG)) array_push(hitboxes,self)
    arr_len = array_length(hitboxes); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    if arr_len > 0 {
        selection_sort_priority(hitboxes);
        for (var i = 0; i < arr_len; i++) with hitboxes[i] {
            __kb_angle = kb_angle == 361 ? 45 : kb_angle; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
        }
    }
}
#define selection_sort_priority(arr)
//basic selection sort alg
var arr_len = array_length(arr), jmin, store;
for (var i = 0; i < arr_len-1; i++) {
    jmin = i; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    for (var j = i+1; j < arr_len; j++) {
        if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
    }
    if (jmin != i) {
        store = arr[@i]; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        arr[@i] = arr[@jmin];
        arr[@jmin] = store;
    }
}