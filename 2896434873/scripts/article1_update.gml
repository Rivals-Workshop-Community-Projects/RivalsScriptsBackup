destroy = false;

hitpause = max(hitpause - 1, -1)
if (is_uspecial_scapegoat)
{
    switch (state)
    {
        case PS_IDLE:
            vsp = free ? vsp + scapegoat_gravity : 0;
            if !free and let_go
            {
                state = PS_LAND;
                sprite_index = sprite_get("uspecial_proj_crash");
                image_index = 0;
                instance_destroy(hitbox)
                break;
            }
        
            if hitbox == noone
            {
                if let_go and state_timer > 5
                {
                    hitbox = create_hitbox(AT_USPECIAL, 2, x,y-24) 
                    hitbox.uspecial_scapegoat = id;
                }
            }
            else if instance_exists(hitbox)
            {
                hitbox.x = x + hsp;
                hitbox.y = y - 24 + vsp;
                hitbox.hitbox_timer = 1;
                hitbox.uspecial_scapegoat = id;
                
                var randx, randy;
                randx = 20 - random_func(3 + (x mod 5), 40, true)
                
                spawn_hit_fx(x + randx, y-30, player_id.uspecialtrail_vfx);
            }
            else //edgecase, hitbox was destroyed but it didn't register
            {
                state = PS_ATTACK_AIR;
                image_index = 0;
            }
            
            image_index += 0.1*(vsp/4);
        break;
        
        case PS_DEAD:
            sprite_index = asset_get("empty_sprite");
            create_hitbox(AT_USPECIAL, 1, x, y-24);
            spawn_hit_fx(x,y-24,player_id.uspecialburst_vfx);
            sound_play(asset_get("sfx_ori_ustrong_launch"))
            sound_play(asset_get("sfx_hod_nspecial"),false,noone,0.9)
            destroy = true;
        break;
        
        case PS_ATTACK_AIR:
            image_index += 1/detonate_air_anim_frames
            sprite_index = sprite_get("uspecial_proj_fallburst");
            
            vsp *= 0.66
            if image_index >= image_number
            {
                state = PS_DEAD;
            }
        break;
        
        case PS_LAND:
            image_index += (image_number)/plop_anim_frames;
            if image_index >= image_number
            {
                state = PS_LANDING_LAG;
                image_index = 0;
                sprite_index = sprite_get("uspecial_proj_lay");
            }
        break;
        
        case PS_LANDING_LAG:
            image_index += (image_number)/still_plop_anim_frames;
            if image_index >= image_number
            {
                state = PS_ATTACK_GROUND;
                image_index = 0;
                sprite_index = sprite_get("uspecial_proj_layburst");
            }        
        break;
        
        case PS_ATTACK_GROUND:
            image_index += (image_number)/detonate_ground_anim_frames
            
            vsp *= 0.76
            if image_index >= image_number
            {
                state = PS_DEAD;
            }
        break;
    }
}
else
{
    player_id.move_cooldown[AT_DSPECIAL] = 3;
    //print("executing dspecial scapegoat")
    //DSPECIAL SCAPEGOAT
    switch (state)
    {
        case PS_IDLE:
            if state_timer == 6
            {
                vsp += 2;
                state = PS_ATTACK_GROUND;
                //print("DSPECIAL VARIANT : " + string(dspecial_variant))
                sprite_index = sprite_get("scapegoat_pose" + string(dspecial_variant));
                image_index = 0;
                state_timer = 0;
            }
        break;
        case PS_ATTACK_GROUND:
            switch dspecial_wait
            {
                case 0:
                    image_index += (image_number/dspecial_disappear_frames)
                    if (image_index == 1){
                         sound_play(asset_get("sfx_ori_dash_attack_perform"))
                    }
                    if (image_index >= image_number)
                    {
                        scapegoat_obj = noone;
                        destroy = true;
                        break;
                    }
                    
                    if dspecial_lit
                    {
                        sprite_index = asset_get("empty_sprite");
                        create_hitbox(AT_DSPECIAL, 1, x, y-24);
                        spawn_hit_fx(x,y-24,player_id.uspecialburst_vfx);
                        sound_play(asset_get("sfx_ori_ustrong_launch"))
                        sound_play(asset_get("sfx_hod_nspecial"),false,noone,.9)
                        destroy = true;
                        break;
                    }
                    
                default:
                    dspecial_wait = max(dspecial_wait-1, 0);
                    if !dspecial_wait state_timer = 0;
                    
                    with oPlayer
                        {
                            if place_meeting(x,y,other)
                            {
                                if (state_cat == SC_HITSTUN)
                                {
                                    if (fspecial_curse_player == other.player_id) other.dspecial_lit = true;
                                    if other.dspecial_lit other.dspecial_wait = 0;
                                }
                                else
                                {
                                    while place_meeting(x,y,other)
                                    {
                                        x += sign(x-other.x);
                                        y += sign(y-other.y);
                                    }
                                }
                            }
                        }
                        // for (var i = 1; i < 5; i++)
                        // {
                        //     if i == player_id.player break;
                            
                        //     with instance_find(asset_get("oPlayer"),i) 
                        //     {
                        //         if place_meeting(x,y,other)
                        //         {
                        //             other.dspecial_wait = 0;
                        //         }
                        //     }
                        // }
                    
                    with pHitBox
                    {
                        if player_id == other.player_id and place_meeting(x,y,other)
                        {
                            switch (attack)
                            {
                                case AT_FSPECIAL:
                                    if other.dspecial_wait != 0 {
                                        other.dspecial_wait = other.dspecial_wait_lit;
                                        with (other)
                                        {
                                            sound_play(sound_get("glucky_waterhit"))
                                        }
                                        other.dspecial_lit = true;
                                        destroyed = true;   
                                    }
                                    break;
                                case AT_NSPECIAL:
                                    other.state = PS_CRYSTALIZED;
                                    other.old_vsp = -10;
                                    other.hitpause = 6;
                                    other.vsp = 0;
                                    other.state_timer = 0;
                                    other.old_hsp = sign(x-player_id.x) * 2;
                                    other.hsp =0;
                                break;
                                case AT_NSPECIAL_2:
                                    if hbox_num == 1 {
                                        other.state = PS_CRYSTALIZED;
                                        other.old_vsp = -16;
                                        other.hitpause = 6;
                                        other.vsp = 0;
                                        other.state_timer = 0;
                                        other.old_hsp = sign(x-player_id.x) * 2;
                                        other.hsp = 0;
                                    }
                                break;
                            }
                        }
                        
                        if player_id != other.player_id and place_meeting(x,y,other)    
                        {
                            if type == 2
                            {
                                if (!plasma_safe or !transcendent) destroyed = true;
                            }
                            else if (other.dspecial_lit = true)
                            {  
                               if other.dspecial_lit other.dspecial_wait = 15;
                               with other sound_play(asset_get("sfx_ori_ustrong_charge"),false,noone,.8);
                            }
                            else
                            {
                                other.state = PS_DEAD;
                                other.state_timer = 0;
                                with other sound_play(sound_get("glucky_scapegoat_fuck"));
                            }
                        }
                    }
                break;
            }
            
        break;
        case PS_DEAD:
            hsp = 0;
            sprite_index = sprite_get("scapegoat_death")
            image_index += (image_number/dspecial_death_frames)
            if (image_index >= image_number)
            {
                scapegoat_obj = noone;
                destroy = true;
            }
        break;
        case PS_CRYSTALIZED: //hit with shit
            if state_timer == 1 {
                hitbox = create_hitbox(AT_DSPECIAL, 2, x, y-(char_height / 2))    
            }
            if hitpause == 0 {
                vsp = old_vsp
                hsp = old_hsp
            }
            if hitpause != -1 break;
            
            vsp = free ? vsp + (scapegoat_gravity/1.2) : 0;
            with pHitBox
            {
                if player_id == other.player_id and place_meeting(x,y,other)
                {
                    switch (attack)
                    {
                        case AT_FSPECIAL:
                            if other.dspecial_wait != 0 {
                                other.dspecial_wait = other.dspecial_wait_lit;
                                with (other)
                                {
                                    sound_play(sound_get("glucky_waterhit"))
                                }
                                other.dspecial_lit = true;
                                destroyed = true;   
                            }
                            break;
                        case AT_NSPECIAL:
                            other.state = PS_CRYSTALIZED;
                            other.old_vsp = -10;
                            other.old_hsp = sign(x-player_id.x) * 2;
                            other.hitpause = 6;
                            other.vsp = 0;
                            other.hsp = 0;
                        break;
                        case AT_NSPECIAL_2:
                            if hbox_num == 1 {
                                other.state = PS_CRYSTALIZED;
                                other.old_vsp = -16;
                                other.old_hsp = sign(x-player_id.x) * 2;
                                other.hitpause = 6;
                                other.vsp = 0;
                                other.hsp = 0;
                            }
                        break;
                    }
                }
            }
            
            if instance_exists(hitbox)
            {
                hitbox.x = x + hsp;
                hitbox.y = y - (char_height / 2) + vsp;
                hitbox.hitbox_timer = 1;
                
                if !free {
                    instance_destroy(hitbox);
                    if dspecial_lit == true
                    {
                        destroy_self();
                    }
                    else {
                        state = PS_DEAD;
                        state_timer = 0;
                    }
                }
            }
            else {
                state = PS_DEAD;
                state_timer = 0;
            }
        break;
        case PS_BURIED:
            if state_timer == 0 and instance_exists(hitbox) instance_destroy(hitbox);
            
            destroy = true;
            hsp = 0;
            vsp = 0;
        break;
    }
}

state_timer++;
if (y > room_height) destroy = true;

if destroy instance_destroy();

#define destroy_self

sprite_index = asset_get("empty_sprite");
create_hitbox(AT_DSPECIAL, 1, x, y-24);
spawn_hit_fx(x,y-24,player_id.uspecialburst_vfx);
sound_play(asset_get("sfx_ori_ustrong_launch"))
sound_play(asset_get("sfx_hod_nspecial"),false,noone,.9)
destroy = true;