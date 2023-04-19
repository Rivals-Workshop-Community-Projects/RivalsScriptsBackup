//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//If you can Enhance, plays the effect/sounds, depending on the attack changes the recoil
if (window == 1 && enhanced == false && attack != AT_JAB && ex_cooldown == 0){
    if (parry_ex >= 0 && shield_pressed) || 
    
    (parry_ex <= 0 && 
    
    ((attack == AT_NSPECIAL || attack == AT_FSPECIAL 
    || attack == AT_DSPECIAL || attack == AT_USPECIAL) && 
    (special_pressed || is_special_pressed(DIR_ANY))
    
    || ((attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK
    || attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_BAIR || attack == AT_NAIR)
    && (attack_pressed || is_attack_pressed(DIR_ANY) || is_strong_pressed(DIR_ANY) 
    || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed))
    
    || ((attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) &&
    (special_pressed || attack_pressed || right_strong_pressed
    || left_strong_pressed || up_strong_pressed || down_strong_pressed
    || is_special_pressed(DIR_ANY) || is_attack_pressed(DIR_ANY))))){
        
    
        enhanced = true;
        ex = 1;
        enhanced_now = true;
        sound_play(sound_get("fire_start"));
        spawn_hit_fx( x-25*spr_dir, y-50, zetter_hit_ex);
        if (attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT || attack == AT_FAIR
        || attack == AT_UAIR || attack == AT_NAIR){
            take_damage( player, -1, 5);
        }
        if (attack == AT_DATTACK || attack == AT_DAIR || attack == AT_DSPECIAL
        || attack == AT_FSPECIAL){
            take_damage( player, -1, 8);
        }
        if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
            take_damage( player, -1, 10);
        }
        if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_BAIR){
            take_damage( player, -1, 12);
        }
    }
}
/*
if (window != 1){
    enhanced_now = false;   //As hitboxes estão ativando ainda, ve lá (FTilt)
}
if (window == 1 && enhanced == true && enhanced_now == false){
    ex = 0;
    enhanced = false;
}

if ((attack == AT_FTILT && window == 2) || (attack == AT_UTILT && window == 2)
    || (attack == AT_DTILT && window == 2) || (attack == AT_DATTACK && window == 2)
    || (attack == AT_FSTRONG && window == 3) || (attack == AT_USTRONG && window == 3)
    || (attack == AT_DSTRONG && window == 3) || (attack == AT_NAIR && window == 5)
    || (attack == AT_FAIR && window == 2) || (attack == AT_BAIR && window == 3)
    || (attack == AT_UAIR && window == 2) || (attack == AT_DAIR && window == 2)
    || (attack == AT_NSPECIAL && window == 4) || (attack == AT_FSPECIAL && window == 3)
    || (attack == AT_DSPECIAL && window == 3) || (attack == AT_USPECIAL && window == 2)){
        ex_cooldown = 150;
    }

*/

//The EX Cooldown for each move (only counts if the hitbox comes out)
if (enhanced == true){
    if ((attack == AT_FTILT && window == 2) || (attack == AT_UTILT && window == 2)
    || (attack == AT_DTILT && window == 2) || (attack == AT_FAIR && window == 2)
    || (attack == AT_NAIR && window == 5)){
        ex_cooldown = 60;
    }
    if ((attack == AT_DATTACK && window == 2) || (attack == AT_DSPECIAL && window == 3) 
    || (attack == AT_UAIR && window == 2)){
        ex_cooldown = 90;
    }
    if ((attack == AT_FSTRONG && window == 3) || (attack == AT_USTRONG && window == 3)
    || (attack == AT_DSTRONG && window == 3) || (attack == AT_DAIR && window == 2)
    || (attack == AT_FSPECIAL && window == 3)){
        ex_cooldown = 120;
    }
    if ((attack == AT_BAIR && window == 3) || (attack == AT_NSPECIAL && window == 4)
    || (attack == AT_USPECIAL && window == 2)){
        ex_cooldown = 150;
    }
}


//HUD Icon Stuff for some attacks
{

if (attack == AT_DSTRONG){
    if (window == 3 && char_height <= 80){
        char_height += 4;   
    }
    if (window == 4 && char_height >= 60){
        char_height -= 1;   
    }
}

}

//FTilt - Spawns the Explosion
if (attack == AT_FTILT){
    if (enhanced == true && window == 2 && window_timer == 6){
        sound_play(sound_get("hit_fire2"));
        spawn_hit_fx( x+85*spr_dir, y-35, fire_effect_big);
    }
}

//DTilt - Gives a tiny horizontal boost
if (attack == AT_DTILT){
    if (enhanced == true && window == 1 && window_timer == 7){
        hsp = 7*spr_dir;
    }
}

//UTilt - Jump height and HUD stuff
if (attack == AT_UTILT){
    can_fast_fall = false;
    if (enhanced == true){
        set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -9);
    }
    else {
        set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -4);
    }
    if (window > 1 && char_height <= 80){
        char_height += 3;   
    }
}

//DAttack - Brick Break - Triggers the Armor
if (attack == AT_DATTACK){
    if (enhanced == true && window < 3){
        super_armor = true;
    }
    else {
        super_armor = false;
    }
}

//Changes the EX Sprite for these moves
if (attack == AT_DTILT || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG
 || attack == AT_FAIR || attack == AT_BAIR || attack == AT_NAIR || attack == AT_DAIR){
    if (enhanced == true){
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_ex"));
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_ex"));
        set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_ex"));
        set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_ex"));
        set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_ex"));
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_ex"));
        set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 5);
        set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("pokken_nair"));
        trail_effect = sprite_get("dair_trail2");
        set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("pokken_divekick_ex"));
    }
    else {
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
        set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
        set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
        set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
        set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 2);
        set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("swing"));
        trail_effect = sprite_get("dair_trail");
        set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("pokken_divekick"));
    }
}

//UAir - Gives a tiny vertical boost
if (attack == AT_UAIR){
    if (enhanced == true && window == 1 && window_timer == 8){
        vsp = -6;
    }
}

//DAir - Jump High Kick
if (attack == AT_DAIR){
    //Can change the direction at the start
    if (window == 1){
        if (spr_dir == 1 && left_down){
    		spr_dir = -1
    	}
    	if (spr_dir == -1 && right_down){
    		spr_dir = 1
    	}
    }
    
    //Landing window
    if ((window == 2 || window == 3) && !free){
        destroy_hitboxes();
        window = 4;
        window_timer = 1;
    }
    //Landing stuff again
    if (window == 4 && window_timer < 7 && free){
        window_timer = 7;
    //    hsp *= 0.5;
    }
    //Trail Stuff
    if ((window == 2 || window == 3) && !hitpause){
        if (state_timer%3 == 0){
        	if (draw1 <= 0){
        		draw1_x = x;
        		draw1_y = y;
        		draw1 = 1;
        		draw1_index = image_index;
        	}
        	else if (draw2 <= 0){
        		draw2_x = x;
        		draw2_y = y;
        		draw2 = 1;
        		draw2_index = image_index;
        	}
        	else if (draw3 <= 0){
        		draw3_x = x;
        		draw3_y = y;
        		draw3 = 1;
        		draw3_index = image_index;
        	}
        	else if (draw4 <= 0){
        		draw4_x = x;
        		draw4_y = y;
        		draw4 = 1;
        		draw4_index = image_index;
        	}
        	else if (draw5 <= 0){
        		draw5_x = x;
        		draw5_y = y;
        		draw5 = 1;
        		draw5_index = image_index;
        	}
        }
    }

}

//NSpecial - Mega Kick
if (attack == AT_NSPECIAL){
    //Resets the variables
    if (window == 1 && window_timer == 1){
        nspecial_turn = false;
        set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
        set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
    }
    //Allows you to turn left or right during the charge
    if (window == 2 && nspecial_turn = false && window_timer > 10 && window_timer <= 30){
        if (spr_dir == 1 && (left_pressed || left_down)){
            window_timer -= 4;
            spr_dir *= -1;
            set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_rev"));
            set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_rev_air"));
            x -= 55;
            nspecial_turn = true;
        }
        if (spr_dir == -1 && (right_pressed || right_down)){
            window_timer -= 4;
            spr_dir *= -1;
            set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_rev"));
            set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_rev_air"));
            x += 55;
            nspecial_turn = true;
        }
    }
    //Changes the hurtbox when turning
    if (nspecial_turn == true){
        if (free){
            hurtboxID.sprite_index = sprite_get("nspecial_rev_air_hurt");
        }
        else {
            hurtboxID.sprite_index = sprite_get("nspecial_rev_hurt");
        }
    }
    //If you turn fixes your position
    if (window == 6 && window_timer == 20 && nspecial_turn == true){
        if (spr_dir == 1){
            x -= 45;
        }
        if (spr_dir == -1){
            x += 45;
        }
    }
    //Triggers the EX Super Armor
    if (enhanced == true && (window == 2 || window == 3)){
        super_armor = true;
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 60);
    }
    else {
        super_armor = false;
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 40);
    }
}

//FSpecial - Brave Bird
if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 25;
    if (was_parried == true){
        window = 5;
    }
    //Sets the cooldown
    if (window == 1 && free){
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
    }
    if (window == 1 && !free){
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
    }
    can_fast_fall = false;
    can_wall_jump = true;
    //EX Attributes and Animations
    if (enhanced == true){
        set_attack_value(AT_FSPECIAL, AG_STRONG_CHARGE_WINDOW, 1);
        if (window == 1){
            vsp = 0;
            can_move = false;
        }
        strong_down = special_down;
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialex"));
        hurtboxID.sprite_index = sprite_get("fspecialex_hurt");
        trail_effect = sprite_get("fspecial_trail2");
        
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);

            if (strong_charge < 20){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 12);
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 12); 
            }
            if (strong_charge >= 20 && strong_charge < 30){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 13);
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 13); 
            }
            if (strong_charge >= 30 && strong_charge < 40){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 14);
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 14); 
            }
            if (strong_charge >= 40 && strong_charge < 50){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 15);
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 15); 
            }
            if (strong_charge >= 50){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 17);
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 17); 
            }
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_brave_bird_ex"));
    }
    else {
        if (window == 1 && window_timer == 1){
            strong_charge = 0;
        }
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
        hurtboxID.sprite_index = sprite_get("fspecial_hurt");
        trail_effect = sprite_get("fspecial_trail");
        
        set_attack_value(AT_FSPECIAL, AG_STRONG_CHARGE_WINDOW, 0);
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 12);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 12);
        
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_brave_bird"));
    }
    //Can Jump on hit
    if (window > 2 && has_hit && !hitpause){
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
        if (enhanced == false){
            can_jump = true;
    //        can_attack = true;
    //        can_strong = true;
    //        can_ustrong = true;
            if (jump_pressed){
                hsp *= 0.7;
            }
        }
    }
    
    //Makes so you can FSpecial back to the stage and not get stuck on the wall (thanks Supersonic!)
    if (window > 2){
        var max_height = 40;
        if place_meeting(x+hsp,y+vsp,asset_get("par_block")) { //check if you're about to collide with a wall
          for (var i = 0; i < max_height; i += 2) { //increase y shift
            if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) { //if you are no longer colliding with the ground at that y shift
              x = x+hsp; //apply hsp early
              y = y+vsp-i; //apply vsp early, apply y shift
              hsp = 0; //kill hsp for now (meant for hsp type 1)
              vsp = 0; //kill vsp for now (meant for vsp type 1)
              break; //break from the loop so it doesn't loop any more than necessary
            }
          }
        }
    }
    //Trail Stuff
    if ((window == 3 || window == 4) && !hitpause){
        if (state_timer%3 == 0){
        	if (draw1 <= 0){
        		draw1_x = x;
        		draw1_y = y;
        		draw1 = 1;
        		draw1_index = image_index;
        	}
        	else if (draw2 <= 0){
        		draw2_x = x;
        		draw2_y = y;
        		draw2 = 1;
        		draw2_index = image_index;
        	}
        	else if (draw3 <= 0){
        		draw3_x = x;
        		draw3_y = y;
        		draw3 = 1;
        		draw3_index = image_index;
        	}
        	else if (draw4 <= 0){
        		draw4_x = x;
        		draw4_y = y;
        		draw4 = 1;
        		draw4_index = image_index;
        	}
        	else if (draw5 <= 0){
        		draw5_x = x;
        		draw5_y = y;
        		draw5 = 1;
        		draw5_index = image_index;
        	}
        }
    }

}

//USpecial - Sky Uppercut
if (attack == AT_USPECIAL){
    can_wall_jump = true;
    //EX Attributes and Animations
    if (enhanced == true && window == 2){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -18);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 1);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 1);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 5);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_sky_uppercut_ex"));
    }
    if (enhanced == false){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -11);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 2);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -3);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 8);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_sky_uppercut"));
        
        set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
    }
    //Plays the Explosion effect
    if (enhanced == true && window == 5 && window_timer == 4){
        sound_play(sound_get("pokken_sky_uppercut_ex_explode"));
        spawn_hit_fx( x-4*spr_dir, y-40, fire_effect_big);
    }
    //Makes so you don't enter pratfall on hit
    if (!enhanced && has_hit) {
        set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
        if (window >= 4){
            can_jump = true;
            can_attack = true;
            move_cooldown[AT_USPECIAL] = 9999;
        }
    } 
    else {
        reset_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE);
    }
}

//DSpecial - Will-O-Wisp
if (attack == AT_DSPECIAL){
    //Sets the sound effect
    if (enhanced == true){
        set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_ball_ex"));
    }
    else {
        set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 0);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("pokken_ball"));
    }
    //Spawns the Wisp (if it's the EX one and if it needs to destroy a previous one)
    if (window == 2 && window_timer == 3){
        move_cooldown[AT_DSPECIAL] = 60;
        if (instance_exists(will_o_wisp)){
            if (will_o_wisp.wisp_ex == true){
                spawn_hit_fx( will_o_wisp.x, will_o_wisp.y, fire_effect_big);
            }
            else {
                spawn_hit_fx( will_o_wisp.x, will_o_wisp.y, fire_effect_small);
            }
            will_o_wisp.shoulddie = true;
        }
        will_o_wisp = instance_create( x+60*spr_dir, y-40, "obj_article1"); 
        if (enhanced == true){
            will_o_wisp.wisp_ex = true;
            spawn_hit_fx( x+60*spr_dir, y-40, fire_effect_big);
        }
        else {
            spawn_hit_fx( x+59*spr_dir, y-40, fire_effect_small);
        }
    }
}

//Taunt - Swagger - Triggers the effect on the opponent
if (attack == AT_TAUNT){
    if (window == 4){
        if (window_timer == 4){
            taunt_effect = 0;
        }
        if (window_timer == 8){
            taunt_effect2 = 0;
        }
    }
}