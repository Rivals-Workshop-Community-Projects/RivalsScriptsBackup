//
image_index += 0.5-((spr==0)*0.3);
if (player_id.window == 3 || player_id.state != clamp(player_id.state,5,6) || player_id.attack != AT_USPECIAL)  {
    player_id.rec_article = noone;
    ds_list_destroy(position_table);
    instance_destroy();
    exit;
}

if (player_id.window == 1) {
    if (player_id.window_timer%2 == 0) {
        ds_list_add(position_table,[x,y,floor(player_id.window_timer/2),passed_field]);
    }
    
    if (!player_id.joy_pad_idle) {
        hsp = lengthdir_x(spd,player_id.joy_dir);
        vsp = lengthdir_y(spd,player_id.joy_dir);
    } else {
        hsp *= 0.7;
        vsp *= 0.7;
    }
    cur_target = 0;
} else if (player_id.window == 2 && !player_id.hitpause) {
    hsp = 0;
    vsp = 0;
    //zoomy
    if position_table[| cur_target][3] && !player_id.attack_charged {
        player_id.attack_charged = true;
        player_id.white_flash_timer = 20;
        sound_play(asset_get("sfx_diamond_small_collect"));
    }
    player_id.x = position_table[| cur_target][0];
    player_id.y = position_table[| cur_target++][1];
    
    if (cur_target == ds_list_size(position_table)) {
        player_id.window = 3;
    }
} 

if image_index >= 3 && spr == 0
{
    sprite_index = sprite_get("article1_2");
    image_index = 0;
    spr = 1;
} 