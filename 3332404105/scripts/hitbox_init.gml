//for the hitbox, init

state = 0;
state_timer = 0;
free_vsp = 0;

hbox_created = noone;

has_hit_someone = 0;
has_hit_someone_id = noone;

generic_counter1 = 0;
generic_counter2 = 0;

guy_created = noone

if (attack == AT_FSPECIAL && id == player_id.lobbed_item){
    //var cur_item = player_id.inv_slot[player_id.inv_selection];
    var cur_item = hbox_num;
    item_id = cur_item;
} else{
    item_id = 0;
}

if (item_id == player_id.itm_knifebear){
    if (hsp * sign(hsp) < vsp * sign(vsp)){
        vsp = point_distance(0, 0, hsp * sign(hsp), vsp * sign(vsp)) * sign(vsp);
        hsp = 0;
        image_index = 1;
        mask_index = sprite_get("hbox_knifebear2");
    } else
    if (hsp * sign(hsp) > vsp * sign(vsp)){
        vsp = 0;
        hsp = point_distance(0, 0, hsp * sign(hsp), vsp * sign(vsp)) * sign(hsp);
        image_index = 0;
        mask_index = sprite_get("hbox_knifebear");
    }
}

if (sprite_index == sprite_get("bullet")){
    through_platforms = 5;
    hit_priority = 1;
    damage = 14;
    kb_value = 6;
    kb_scale = 0.7;
    hitpause = 12;
    hitpause_growth = 0.3;
    hit_effect = player_id.vfx_flash;
    sound_effect = player_id.sfx_hit4;
    destroy_fx = 259;
    
    mask_index = sprite_get("bullet_hbox");
    img_spd = 0.5;
    proj_angle = point_direction(0, 0, hsp * spr_dir, vsp * spr_dir);
    player_id.cool_factor = player_id.max_cool;
}

if (player_id.intox_level >= 3){
    var random_number = random_func(1,3, true);
    if (random_number == 2){
        spr_dir *= -1;
        hsp *= -1;
    }
}
