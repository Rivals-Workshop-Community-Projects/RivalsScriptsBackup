if attack == AT_DSPECIAL and my_hitboxID.hbox_num == 1{
    if hit_player_obj.spr_dir == 1{
        x = hit_player_obj.x - 32
        y = hit_player_obj.y
    }
    if hit_player_obj.spr_dir == -1{
        x = hit_player_obj.x + 40
        y = hit_player_obj.y
    }
    if stock_held == 0 and get_player_stocks( hit_player_obj.player ) > 1{
        set_player_stocks( hit_player_obj.player, get_player_stocks( hit_player_obj.player ) - 1 );
        stock_owner = hit_player_obj.player
        stock_owner_id = hit_player_obj
        stock_held = 1
        stock_timer = 599
    }
    if stock_held = 0 and get_player_stocks( hit_player_obj.player ) = 1{
        stock_bm = 1
        stock_timer = 599
    }
    if stock_owner == hit_player_obj.player{
        stock_timer = 599
    }
} 

if attack == AT_USPECIAL and my_hitboxID.hbox_num == 1 and window < 6{
    x = hit_player_obj.x
    y = hit_player_obj.y
}

if attack == AT_DTILT and my_hitboxID.hbox_num == 1{
    hit_player_obj.spr_dir = hit_player_obj.spr_dir*-1
}

if attack != AT_FSTRONG{
    assurance_player = hit_player_obj
    assurance_player.last_hit = 30
}

if (attack == AT_FSTRONG and my_hitboxID.hbox_num == 2) and (assurance_player.state == PS_HITSTUN or assurance_player.state == PS_TUMBLE or assurance_player.state == PS_HITSTUN_LAND) or (assurance_player.last_hit > 0){
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("assurance_strong"));
    assurance_active = 1;
    //print(assurance_active)
//    print("wow")
}
if attack == AT_FSTRONG and my_hitboxID.hbox_num == 1 and assurance_active == 1{
    spawn_hit_fx( hit_player_obj.x,  hit_player_obj.y, assurance_vfx);
    assurance_active = 0;
    //print(assurance_active)
}

/*if (attack == AT_FSTRONG and my_hitboxID.hbox_num == 2) and (assurance_player.last_hit > 0){
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
//    print("cool")
}*/

if (attack == AT_BAIR and my_hitboxID.hbox_num == 2) and (hit_player_obj.state == PS_ATTACK_AIR or hit_player_obj.state == PS_ATTACK_GROUND){
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
    set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("payback2"));
    set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, payback_vfx);
}