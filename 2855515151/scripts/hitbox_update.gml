//a
// // fstrong hitbox code
if attack == AT_FSTRONG && hbox_num == 1 {
    if prev_hitstate != hitstate {
        anim_timer = 0;
        temp_timer = 0;
        prev_hitstate = hitstate
    }
    if player_id.state != PS_ATTACK_GROUND {
        destroyed = true;
    }
    switch hitstate {
        case 0: //fstrong charge
            //animate the spinning for aesthetic, doesn't hit yet
            hit_priority = 0;
            hitbox_timer = 0;
            hsp = 0; //doesn't move yet either
            temp_timer += 1;
            if anim_timer < 8 {
                anim_timer += 1; //temporary timer for animation purposes
            }
            //if the player isn't in fstrong, cease to exist
            if player_id.state != PS_ATTACK_GROUND or player_id.attack != AT_FSTRONG {
                destroyed = true;
            }
            //update sprite
            image_index = ease_linear(0,5,anim_timer,8)
            
            //go to next one
            if temp_timer >= 9 {
                hitstate = 2;
            }
            with(player_id){other.x = x + get_hitbox_value(AT_FSTRONG,1,HG_HITBOX_X) * spr_dir}
            with(player_id){other.y = y + get_hitbox_value(AT_FSTRONG,1,HG_HITBOX_Y)}
            break;
        /* due to code changes this one is now fused with 0 so it's commented out
        case 1: //post-charge startup, still can't hit
            hit_priority = 0;
            hitbox_timer = 0;
            hsp = 0; //doesn't move yet either
            
            
            //if the player isn't in fstrong, also cease to exist
            if player_id.state != PS_ATTACK_GROUND or player_id.attack != AT_FSTRONG {
                destroyed = true;
            }
            //update sprite
            image_index = ease_linear(4,5,temp_timer,6)
            
            // // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA // //
            
            //here the active frame data/when the projectile actually activates is set
            if player_id.window == 3 && player_id.window_timer >= 10 {
                hitstate = 2;
                temp_timer = 0;
            }
            
            // // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA // //
            
            break;
        */
        case 2: //active projectile
            hit_priority = 0;
            //hit_priority = 6;
            hitbox_timer = 0;
            temp_timer += 1;
            if get_gameplay_time() mod 7 == 0 {
                for(var i=0;i < 5;i++) {
                    can_hit[i] = true;
                }
            }
            //on the first actual frame, set the right speed (changes with charge)
            if !(hsp < -clydespeed or hsp > clydespeed) {
                hsp += 0.15 * spr_dir;
            }
            
            //update sprite
            if image_index > 12 {
                image_index = 6;
            } else {
                image_index += 0.35;
            }
            //after going through 'bite_timer' frames or hitting someone, bite
            if player_id.window == 3{
                hitstate = 3;
            }
            break;
            
        case 3: //bite
            hit_priority = 0;
            hitbox_timer = 0;
            temp_timer += 1;
            hsp = lerp(hsp,0,0.05);
            if anim_timer < 15 {
                anim_timer += 1;
            }
            //update sprite
            image_index = ease_linear(13,15,anim_timer, 15)
            
            //spawn other hitbox
            //(has 6 frame startup)
            if temp_timer == 15 {
                sound_play(sound_get("clyde_2"),false,0,0.95,1)
                sound_play(asset_get("sfx_syl_fspecial_bite"),false,0,0.35,1.75)
                sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,0.45)
                create_hitbox(AT_FSTRONG,2,x + 33 * spr_dir,y)
                //spawn hitbox code later cause gotta afk rn
            }
            
            //click here to instantly
            if temp_timer >= 15 {
                hitstate = 4
                temp_timer = 0;
            }
            break;
            
        case 4: //clyde die :(
            hit_priority = 0;
            hitbox_timer = 0;
            temp_timer += 1
            hsp = lerp(hsp,0,0.1);
            if anim_timer < 8 {
                anim_timer += 1;
            }
            if temp_timer == 9 {
                destroyed = true;
            }
            image_index = ease_linear(16,19,anim_timer, 8)
            break;
        
        
    }
}

if attack == AT_DSPECIAL_2{
    if (hbox_num == 3)
    {
        if (position_meeting(x, y + 15, asset_get("par_block")))
        destroyed = true;
        
        if (otto_hitpause == 1)
        {
            if (hitpause_frames > 0)
            {
                hitpause_frames--;
                vsp = 0;
                hsp = 0;
                grav = 0;
            }
            else 
            {
                vsp = -4;
                grav = 0.2;
                otto_hitpause = 0;
                hitpause_frames = 18;
            }
        }
    }
    if (hbox_num == 4) // berd
    {
        hsp = sin((hitbox_timer+offsetTimer)/18)*spr_dir*temphsp;
    }
}

