//
if (attack == AT_FTHROW){
    if(hbox_num == 1){
        if(!free || destroyed){
            if(!player_id.bomb_missfire){
            player_id.smokebomb = instance_create(x, y-8, ("obj_article1"));
            }
            destroyed = true;
        }
    }
}
if (attack == AT_DTHROW){
    if(hbox_num == 1){
        if(!free || destroyed){
            if(!player_id.bomb_missfire){
            player_id.smokebomb = instance_create(x, y-8, ("obj_article1"));
            }
            destroyed = true;
        }
    }
}
if (attack == AT_UTHROW){
    if(hbox_num == 1){
        if(!free || destroyed){
            if(!player_id.bomb_missfire){
            player_id.smokebomb = instance_create(x, y-8, ("obj_article1"));
            }
            destroyed = true;
        }
    }
}
if (attack == AT_DSPECIAL_2){
    if(hbox_num == 1){
        if(!free || destroyed){
            if(!player_id.bomb_missfire){
            player_id.smokebomb = instance_create(x, y-8, ("obj_article1"));
            }
            destroyed = true;
        }
    }
}

if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
    if(hitbox_timer % 1 == 0){
        var hbox = spawn_hit_fx(x, y, player_id.wallstaple_fx);
        hbox.spr_dir = spr_dir;
        }if(hitbox_timer = 19){
            spawn_hit_fx(x, y, 151);
        }
    }
}

/*if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
    if(hitbox_timer % 1 == 0){
        var hbox = spawn_hit_fx(x, y, player_id.wallstaple_fx);
        hbox.spr_dir = spr_dir;
        }if(hitbox_timer = 19){
            spawn_hit_fx(x, y, 151);
        }        if(!free || destroyed){
            spawn_hit_fx(x, y, 151);
            sound_play(asset_get("sfx_shovel_hit_light2"));
            create_hitbox(AT_NSPECIAL, 2, x + hbox.spr_dir* 18, y);
            destroyed = true;
            }
        }if(hbox_num == 2){
           if(hitbox_timer = 359){
            spawn_hit_fx(x, y, 151);
            sound_play(asset_get("sfx_shovel_hit_light1"));
            }if(free){
                destroyed = true;
            } 
        }
}*/