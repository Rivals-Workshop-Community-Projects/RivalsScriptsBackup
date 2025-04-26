// hitbox_init.gml
// this script sets up vars for your hitboxes



if (attack == AT_NSPECIAL and hbox_num == 1) {
    proj_dir_storage = 0;
    bomb_powder = 0;
    bomb_state = 0;
    bomb_explosion_timer = 0;
    cache = {
        hitpause : -1,
        vsp : 0,
        hsp : 0,
        grav : 0
    }
    
    hitbox_groups = array_create(4,0);
    hit_lockout = 0;
    article_should_lockout = false;
    kb_adj = 11;
    var i1 = 0;
    var i2 = 0;
    repeat(4) {
        hitbox_groups[@i1] = array_create(50,0);
        repeat(50) {
            hitbox_groups[@i1][@i2] = array_create(10,0);
            i2++;
        }
        i2 = 0;
        i1++;
    }
    
    hitbox_ref_follow = noone;
    depth -= 4
    
    polite_threshold = 14;
}

if attack == AT_NSPECIAL and hbox_num == 6 {
    original_can_hit = deep_copy(can_hit)
}




// blastzone vars (VERY useful)
blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

#define deep_copy
var arr = argument0;

var new_array = array_create(array_length(arr))
for (var o = 0; o < array_length(arr); o++) {
	new_array[o] = arr[o]
}

return new_array;