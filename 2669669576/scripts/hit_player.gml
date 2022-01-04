if(!fast_falling){
    if my_hitboxID.attack == AT_DAIR
    {
        if my_hitboxID.hbox_num == 1
        {
            old_hsp *= 0.7
            old_vsp -= 2
        }
        else
        {
            old_vsp = -4
        }
    }
    else if my_hitboxID.attack == AT_BAIR
    {
        old_vsp = -2
        old_hsp = old_hsp - 1*spr_dir;
    } else if (my_hitboxID.attack == AT_NAIR){
        switch(my_hitboxID.hbox_num){
            case 1:
                old_hsp = spr_dir*clamp(abs(old_hsp), 3, 6);
                old_vsp = -3;
                break;
            case 2:
                old_hsp = spr_dir*clamp(abs(old_hsp), 4, 7);
                old_vsp = 1.5;
                break;
            case 3:
                
                old_vsp = -6;
                break;
        }
    } else if (my_hitboxID.attack == AT_UAIR){
        old_vsp += -1.4;
    }
}

if(hit_player_obj == shadowball_hit_player and shadowball_hit_timer > 0){
    shadowball_hit_timer+= 10*my_hitboxID.damage;
}

if (my_hitboxID.attack == AT_NSPECIAL) and !hit_player_obj.clone
{
    if(shadowball_hit_timer <= 0 or shadowball_hit_player != hit_player_obj){
        move_cooldown[AT_NSPECIAL] = 0;
        shadowball_hit = true;
        shadowball_hit_player = hit_player_obj;
        shadowball_hit_timer = 60*my_hitboxID.hbox_num;
        shadowball_hit_size = my_hitboxID.hbox_num;
        if(my_hitboxID.hbox_num < 4){
            set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
            set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
        } else {
            set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 11);
            set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
            set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
        }
        set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5 + my_hitboxID.hbox_num/8);
    } else if(shadowball_hit_player == hit_player_obj) {
        shadowball_hit_timer += 60*my_hitboxID.hbox_num;
        if(my_hitboxID.hbox_num > shadowball_hit_size){
            if(my_hitboxID.hbox_num < 4){
                set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
                set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
                set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
            } else {
                set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 11);
                set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
                set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
            }
            set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5 + my_hitboxID.hbox_num/8);
        }
    }
    
} else if (my_hitboxID.attack == AT_USPECIAL_2){
    shadowball_hit = false;
    shadowball_hit_timer = 0;
}


if(my_hitboxID.attack == AT_FSTRONG and my_hitboxID.type == 2){
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 304);
}


if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num > 3){
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 304);
}

