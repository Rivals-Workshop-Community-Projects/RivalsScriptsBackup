switch my_hitboxID.attack{
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 1{
        if attack == AT_FSTRONG grabp = noone;
        var e = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, explosion_vfx);
        e.depth = hit_player_obj.depth - 200;
        e.spr_dir *= 2;
        e.image_yscale = 2;
        hit_pos = [my_hitboxID.x, my_hitboxID.y];
        shake_camera(5, 30);
        sound_play(sound_get("guardian_hit"));
        my_hitboxID.destroyed = 1;
        with hit_fx_obj if player_id == other uses_shader = 0;
    }
    break;
    
    case AT_NAIR:
    spawn_hit_fx(hit_player_obj.x, my_hitboxID.y, 302);
    if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .7, 1.1);
    if my_hitboxID.hbox_num == 2 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .9);
    break;
    
    case AT_DAIR:
    old_vsp = -2;
    old_hsp *= .6;
    if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .7, 1.1);
    if my_hitboxID.hbox_num == 3 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .9);
    break;
    
    case AT_JAB:
    if my_hitboxID.hbox_num == 2 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .7, 1.1);
    else if my_hitboxID.attack == AT_JAB{
        sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .95);
		sound_play(asset_get("sfx_kragg_spike"), 0, noone, 1, 1);
    }
    break;
    
    case AT_DSPECIAL:
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, 302);
    break;
    
    case AT_FAIR:
    if my_hitboxID.hbox_num == 1 && !instance_exists(grabp){
        fgrabp = hit_player_obj;
        old_vsp = -4;
    }
    sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, 1.1 - .2*(my_hitboxID.hbox_num == 2));
    sound_play(sound_get("step" + string(random_func_2(55, 8, 1))), 0, noone, 1);
    break;
    
    case AT_FSTRONG:
    case AT_UTILT:
    if my_hitboxID.hbox_num == 1 && !instance_exists(grabp) grabp = hit_player_obj;
    break;
    
    case AT_USTRONG:
    if my_hitboxID.hbox_num == 2 sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .9);
    case AT_USPECIAL:
    if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_heavy1"), 0, noone, .8, .8);
    break;
    
    case AT_BAIR:
    sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .8);
    break;
    
    case AT_FTILT:
    sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .9);
    break;
    
    case AT_UAIR:
    if my_hitboxID.hbox_num == 2 old_vsp -= abs(old_vsp/6);
    if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_med1"), 0, noone, .8, .9);
    break;
}