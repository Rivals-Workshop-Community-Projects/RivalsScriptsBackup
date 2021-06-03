//hitbox_update

if(attack == AT_NSPECIAL){
    switch(hbox_num){
        //1000 Ton Weight
        case(1):
            if !free{
               create_hitbox(AT_NSPECIAL,2,x+15*spr_dir,y+34)
               create_hitbox(AT_NSPECIAL,24,x+15*spr_dir,y+34)
               instance_destroy(); exit;
            }
        break;
        //1000 Ton Weight 2
        case(2):
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_tow_anchor_land"));
                spawn_hit_fx((x), y, fx_weight)
            }
            if (hitbox_timer == 19){
                spawn_hit_fx((x), y, 301)
            }
        break;
        //Jack 1000 Ton Weight
        case(20):
            if !free{
               create_hitbox(AT_NSPECIAL,21,x+15*spr_dir,y+34)
               instance_destroy(); exit;
            }
        break;
        //Jack 1000 Ton Weight
        case(21):
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_tow_anchor_land"));
                spawn_hit_fx((x), y, fx_jack_weight)
            }
            if (hitbox_timer == 19){
                spawn_hit_fx((x), y, 301)
            }
        break;
        //Mini Bugingi
        case(3):
            if !free{
                create_hitbox(AT_NSPECIAL,4,x+15*spr_dir,y+30)
               instance_destroy(); exit;
            }
        break;
        //Mini Bugingi Landed
        case(4):
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_plant_ready"));
            }
            if (hitbox_timer == 5){
                hsp = 3 * spr_dir
                
            }
        break;
        //Jack BEEEG Bugingi
        case(22):
            if !free{
                create_hitbox(AT_NSPECIAL,23,x-15*spr_dir,y)
               instance_destroy(); exit;
            }
        break;        
        //Jack BEEEG Bugingi Landed
        case(23):
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_plant_ready"));
            }
            if (hitbox_timer == 5){
                hsp = 3 * spr_dir
                
            }
        break;
        //Wrench
        case(5):
            if !free{
                spawn_hit_fx((x), y, fx_wrench);
                sound_play(asset_get("sfx_shovel_hit_light1"))
                instance_destroy(); exit;
            }
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_spin"))
            }
        break;
        //Dumbell
        case(6):
            if !free{
                spawn_hit_fx((x+20*spr_dir), y, fx_dumbell);
                sound_play(asset_get("sfx_shovel_hit_light1"))
                instance_destroy(); exit;
            }
        break;
        //Rage Ball
        case(7):
        if (hitbox_timer == 1){
            sound_play(asset_get("sfx_boss_fireball_land"))
        }
        if(hitbox_timer % 3 == 0){
            spawn_hit_fx((x+15 * spr_dir), y+10, fx_rageball);
        }
        break;
        //Bomb
        //if ur looking at this code PLEASE TELL ME HOW TO MAKE IT ONLY SPAWN THE HIT FX FOR ONE FRAME AREHEWJINFJKSDN
        case(8):
        if (!free){
            damage = 0
            kb_angle = 0
            kb_value = 0
            kb_scale = 0
            hg_base_hitpause = 0
            hitpause_growth = 0
            hit_effect = 1
            //bombhit = false
        } else {
            damage = 2
            kb_angle = 90
            kb_value = 2
            kb_scale = .3
            hg_base_hitpause = 3
            hitpause_growth = .3
            hit_effect = 0
            //bombhit = true
        }
        
        if (hitbox_timer == 1){
            sound_play(sound_get("sizzle"))
        }
        if (hitbox_timer == 165){
            with(asset_get("oPlayer")){
                if (url == "2501609403"){
                    sound_stop(sound_get("sizzle"));
                    sound_play(sound_get("Explosion"))
                }
            }
            sound_stop(sound_get("sizzle"));
            create_hitbox(AT_NSPECIAL,9,x,y)
            if (!free){
                spawn_hit_fx(x-2, y+30, fx_explosion)
            }
            if (free){
                spawn_hit_fx(x-2, y+30, fx_explosion2)
            }
            with (hit_fx_obj)
                if (hit_fx == other.fx_explosion){
                depth = -10;}
            instance_destroy(); exit;
        }
        //Hit the Bomb
        nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
        if nearbyhitbox != noone{
        //Makes a sound if u hit it and stuff
        if (bombhit == false){
        if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x != -0.69 {
            player = nearbyhitbox.player
            sound_play(asset_get("sfx_blow_weak1"),false,noone,1.2)
            shake_camera(4,4)
            spawn_hit_fx(x,y,14)
            bombhit = true
        } if nearbyhitbox.type != 1 {
            bombhit = false
        }
        }
            //Decides the angle
            if (nearbyhitbox.attack != AT_NSPECIAL && nearbyhitbox.attack != AT_BAIR){
                if (nearbyhitbox.kb_angle > 0 and nearbyhitbox.kb_angle <= 45) or  nearbyhitbox.kb_angle  == 361{
                    hsp = 6 * nearbyhitbox.spr_dir
                    vsp = -3
                }
                if nearbyhitbox.kb_angle > 45 and nearbyhitbox.kb_angle <= 89 {
                    hsp = 5 * nearbyhitbox.spr_dir
                    vsp = -6
                }  
                if nearbyhitbox.kb_angle > 89 and nearbyhitbox.kb_angle <= 135 {
                   hsp = 4 * nearbyhitbox.spr_dir
                   vsp = -12
                }  else {
        	       hsp = 6 * nearbyhitbox.spr_dir
                   vsp = -7
                }
            } else if (nearbyhitbox.attack == AT_BAIR){
                    hsp = -8 * nearbyhitbox.spr_dir
                    vsp = -5
            }
            nearbyhitbox = noone;
        }
        break;
        case(9):
        can_hit_self = 1;
        break;
        case(10):
            if !free{
                spawn_hit_fx(x,y,14)
                instance_destroy();
                sound_play(asset_get("sfx_boss_fireball"));
                exit;
            }
            if (hitbox_timer == 1){
                sound_play(asset_get("sfx_boss_fireball_land"));
            }
    }
}

if (attack == AT_TAUNT && hbox_num == 1){
    if !free {
        hsp = 2.5*spr_dir
        grounds = 1
        walls = 1
        air_friction = 0
    }
}
