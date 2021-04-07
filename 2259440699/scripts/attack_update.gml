var exists = false;

with (asset_get("obj_article1")){
    if (player_id == other.id){
        exists = true;
    }
}    


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//yes
if (attack == AT_DTILT){
    if (!hitpause && !hitstop){
        if (window == 1){
            hsp = 3*spr_dir;
        }
        if (window == 2){
            hsp = 5*spr_dir;
        }
    }
}

if (attack == AT_NAIR){
    if (window == 3){
        if (window_timer < 5){
            if (!hitstop && !hitpause && !was_parried){
                vsp = -4;
            }
        }
    }
}

if (attack == AT_USTRONG){
    if (window == 3 || window == 4 || (window == 5 && window_timer < 5)){
        hud_offset = 40;
    }
}

if (attack == AT_UTILT){
    if (window == 2 || window == 3 || window == 4){
        hud_offset = 25;
    }
}

if (attack == AT_DATTACK){
    if (window == 1){
        h = false;
    }
    if (window < 4 && window > 1){
        if (free && !h){
            sound_play(sound_get("ohno"));
            vsp = -4;
            hsp++;
            h = true;
        }
    }
    if (was_parried && window < 4){
        hsp = 0;
    }
}

if (attack == AT_JAB){
    if (window == 3 && window_timer == 15){
        if (was_parried){
            was_parried = false;
        }
    }
}



var fstrong_hsp = 8;

if (has_rune("B")){ //rune
    fstrong_hsp = 14;
}

if (attack == AT_FSTRONG){
    if (window == 3){
        if (window_timer == 1 && !hitpause && !hitstop){
            hsp = fstrong_hsp*spr_dir;
        }
    }
}


var uspec_speed = -14;

if (attack == AT_USPECIAL){
    
    if (window == 2){
        if (window_timer == 1 && !hitstop && !hitpause){
            vsp = uspec_speed;
            spawn_hit_fx( x, y - 18, 112 );
        }
    }
    
    if (window > 1){
        can_wall_jump = true;
        can_fast_fall = false;
    }
    
    if (window == 4){
        can_fast_fall = true;
    }
    
}


var nspec_cooldown = 40;

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = nspec_cooldown;
    
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                if (vsp > 0 && should_trigger){
                    vsp = -3;
                }
            }
        }
    }
}


if (attack == AT_DSPECIAL){
    if (window == 2){
        if (window_timer == 1){
            if (!hitstop && !hitpause){
                if (!has_rune("L")){ // not rune
                    if (!exists){
                        instance_create(x + (spr_dir*65),y - 40,"obj_article1");
                        spawn_hit_fx( x + (spr_dir*65), y - 40, 305 );
                        move_cooldown[AT_DSPECIAL] = 70;
                    }
                    else{
                        with (obj_article1){
                            if (player_id == other.id){
                                if (!triggered){
                                    if (hitbox_active){
                                		should_destroy_hitbox = true;
                                	}
                                	spawn_hit_fx( x + (spr_dir*2), y, 306 );
                                    die = true;
                                }
                            }
                        }
                        move_cooldown[AT_DSPECIAL] = 70;
                    }
                }
                else{ //rune
                
                    var kat_max = 5;
                    var count = 0;
                    
                    with (obj_article1){
                        count += (player_id.player == other.player);
                    }
                
                    if (count < kat_max){

                        instance_create(x + (spr_dir*65),y - 40,"obj_article1");
                        spawn_hit_fx( x + (spr_dir*65), y - 40, 305 );
                        move_cooldown[AT_DSPECIAL] = 0;
                        
                    }
                    else{
                        with (obj_article1){
                            
                            var burbrubr = noone;
                            var most_so_far = -1;
                            
                            if (lifetime >= most_so_far){
                                most_so_far = lifetime;
                                burbrubr = self;
                            }
                            

                        }
                        with (burbrubr){
                            if (player_id == other.id){
                                if (!triggered){
                                    if (hitbox_active){
                                    	should_destroy_hitbox = true;
                                    }
                                    spawn_hit_fx( x + (spr_dir*2), y, 306 );
                                    die = true;
                                }
                            }
                        }
                        move_cooldown[AT_DSPECIAL] = 0;
                    }
                }
            }
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 1){
        fspec_charge = 0;
    }
    if (window == 3){
        fspec_charge++;
        if (!special_down){
            window = 4;
            window_timer = 0;
        }
        
        if (has_rune("A")){ //rune
            fspec_charge = 30;
        }
        
        switch (fspec_charge){
            case 1:
                spawn_hit_fx( x + (spr_dir*10), y - 25, 305 );
                sound_play(asset_get("sfx_shop_move"));
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 4);
                set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
                set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
                set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 14);
            break;
            case 6:
                spawn_hit_fx( x + (spr_dir*10), y - 25, 305 );
                sound_play(asset_get("sfx_shop_close"));
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 8);
                set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
                set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .75);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
                set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 18);
            break;
            case 17:
                spawn_hit_fx( x + (spr_dir*10), y - 25, 305 );
                sound_play(asset_get("sfx_shop_move"));
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 12);
                set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
                set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .95);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
                set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 22);
            break;
            case 30:
                spawn_hit_fx( x + (spr_dir*10), y - 25, 305 );
                sound_play(asset_get("sfx_shop_buy"));
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 14);
                set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
                set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.05);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);
                set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 26);
                window = 4;
                window_timer = 0;
            break;
        }
        
    }
    
    if (window > 4){
        can_wall_jump = true;
        
        if (vsp > 2){
            vsp = 2;
        }
        
        if (fspec_charge >= 17){
            if (has_hit){
                can_jump = true;
            }
        }
        
    }
    
}



//runes
if (has_rune("H")){
    if (attack == AT_USPECIAL){
        if (window == 2 || window == 3){
            invincible = true;
        }
        if (window == 4){
            invincible = false;
        }
    }
}

if (has_rune("I")){
    if (attack == AT_FSPECIAL){
        if (window == 5){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    if (attack == AT_DATTACK){
        if (window == 2 || window == 3){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
}

if (has_rune("J")){
    if (attack == AT_USPECIAL){
        if (window == 4){
            move_cooldown[AT_USPECIAL] = 99999;
        }
    }
}

if (has_rune("O")){
    if (attack == AT_NSPECIAL){
        if (window == 1){
            if (special_down && eightball_cooldown <= 0){
                set_num_hitboxes(AT_NSPECIAL, 1);
                should_trigger = false;
            }
            else{
                set_num_hitboxes(AT_NSPECIAL, 0);
                should_trigger = true;
            }
        }
    }
}