//
image_index += 0.5-((spr==0)*0.3);
if (player_id.window == 4 || player_id.state != clamp(player_id.state,5,6) || player_id.attack != AT_USPECIAL)  {
    player_id.rec_article = noone;
    ds_list_destroy(position_table);
    instance_destroy();
    exit;
}

if (player_id.window == 1) {
    spd = ease_linear(7, 14, player_id.window_timer, 44)
    if !passed_field with (oPlayer) if (other.player_id != self) {
        if ds_list_size(roke_mark_id) > 0 && ds_list_find_index(roke_mark_id,other.player_id) != -1 {
            var col = collision_ellipse(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180)),
            y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90),
            x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0)),
            y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270),
            other,
            true,
            true);
            if col != noone {
                other.passed_field = true;
                ds_list_clear(roke_mark_id);
                ds_list_clear(roke_mark_anim);
                roke_mark = 0;
                spawn_hit_fx(x,y-30,305);
                sound_play(asset_get("sfx_absa_dattack"))
            }
        }
    }
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
} else if (player_id.window == 3 && !player_id.hitpause) {
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
        player_id.window = 4;
        with player_id destroy_hitboxes();
    }
} else {
    hsp = 0;
    vsp = 0;
}

if image_index >= 3 && spr == 0
{
    sprite_index = sprite_get("article1_2");
    image_index = 0;
    spr = 1;
} 