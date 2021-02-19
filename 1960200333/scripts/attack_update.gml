//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
    //temperature_drain_timer = 0;
}

//-------------------- Specials ----------------------

//NSPECIAL - Preheating - Holding NSpecial builds up Temperature. By pressing attack or special again during the spin, you can fire a fireball projectile. After 6 spins in total have been preformed, this projectile becomes a high velocity explosive that can kill.
if (attack == AT_NSPECIAL)
{
    if (nspecial_flag){
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
    } else {
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
    }
    
    if (window == 1){
        nspecial_looped = 0;
        if (window_timer == 1){
            nspecial_flag = 0;
        }
        
        if (window_timer > 6 && (special_pressed == true || (attack_down == true && special_down == true)) && temperature >= nspecial_cost) //checks for if nspecial has been double tapped, or if attack has been pressed, to fire the projectile
        {
            nspecial_flag = 1;
        }
        
        if (vsp > 9){
            vsp = 9;
        }
    }
    
    if (window == 2)
    {
        can_fast_fall = false;
        nspecial_timer += 1;

        if (nspecial_timer >= nspecial_gain){
            nspecial_timer = 0;
            temperature += 1;
        }
        
        if (window_timer >= get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
            //window_timer = 0;
            nspecial_looped += 1;
        }
        
        if ((special_down == false || shield_pressed == true) && nspecial_looped >= 1){
            window = 3;
            window_timer = 0;
        }
        
        if (vsp >= 0){
            grav = 0.6;
            if (vsp > 9){
                vsp = 9;
            }
        }
        
        if ((special_pressed == true || (attack_down == true && special_down == true)) && temperature >= nspecial_cost)
        {
            nspecial_flag = 1;
        }
        
        if (nspecial_flag == 1 && temperature >= nspecial_cost && was_parried == false){
            window = 4;
            window_timer = 0;
        }
        
        if (was_parried == true){
            window = 3;
            window_timer = 0;
        }
    } 
    
    if (window == 3)
    {
        if ((special_pressed == true || (attack_down == true && special_down == true)) && temperature >= nspecial_cost && window_timer < 6)
        {
            nspecial_flag = 1;
        }
        
        if (nspecial_flag = 1 && temperature >= nspecial_cost && was_parried = false){
            window = 4;
            window_timer = 0;
        }
    }
    
    //Added - A
    if (window == 5 && window_timer == get_hitbox_value(attack,7,HG_WINDOW_CREATION_FRAME) && nspecial_fireball == noone && was_parried = false)
    if fry_platinum{
        nspecial_fireball = instance_create(x+22*spr_dir,y-16,"obj_article1");
        nspecial_fireball = instance_create(x+28*spr_dir,y-30,"obj_article1");
        nspecial_fireball = instance_create(x+32*spr_dir,y-44,"obj_article1");
        nspecial_fireball = instance_create(x+28*spr_dir,y-58,"obj_article1");
        nspecial_fireball = instance_create(x+22*spr_dir,y-72,"obj_article1");
        temperature -= nspecial_cost;
    } else {
        nspecial_fireball = instance_create(x+22*spr_dir,y-30,"obj_article1");
        temperature -= nspecial_cost;
    }
    //
    
    if (window == 7 && was_parried = false){
        iasa_script();
    }
}


//FSpecial - Pressure Cooking - Accelerate from a standstill to high velocity. Can be cancelled with any action.
if (attack == AT_FSPECIAL)
{

    if (window == 1) && (window_timer = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
    {
        if (temperature >= 1 && special_down == true){
            window = 2;
            window_timer = 0;
            temperature -= 1;
            hsp = fspecial_speed_start*spr_dir;
        } else {
            window = 3;
            window_timer = 0;
        }
    }
        
    if (window == 2)
    {
        if (temperature >= 1 && special_down == true)
        {
            can_move = false;
            //add speed
            hsp += fspecial_speed*spr_dir;
            if (free && vsp > 0){
                vsp = 1.5;
            }
            
            if (hsp > fspecial_speed_max)
            {
                hsp = fspecial_speed_max
            } else if (hsp < -fspecial_speed_max){
                hsp = -fspecial_speed_max
            }
            
            if (window_timer >= 9){ //reset the window to repeat the animation and boost
                window_timer = 0;
            }
            
            fspecial_timer += 1;
            
            if (fspecial_timer >= fspecial_cost){
                fspecial_timer = 0;
                temperature -= 1;
            }
            
        } 
        if (special_down == false){
            window = 3;
            window_timer = 0;
        }
    }
    
    if (window == 3)
    {
        if (was_parried = false)
        {
            can_wall_jump = true;
            can_attack = true;
            can_move = true;
            can_jump = true;
            can_strong = true;
            can_special = true;
            can_ustrong = true;
            can_shield = true;
            can_fast_fall = true;
        }
        
        move_cooldown[AT_FSPECIAL] = fspecial_cooldown; //cooldown
    }
}


//USPECIAL - Hot Wings - Swing downwards twice with flame, boosting yourself up. If you hold down the button during either or both swings, you spend temperature and launch yourself higher, shooting a projectile below you.
if (attack == AT_USPECIAL)
{
    move_cooldown[AT_USPECIAL] = 99999;
    
    if (window == 1){
        grav = 0.33;
        if (free == false){
            vsp = -4;
        }
        if (vsp > 7){
            vsp = 7;
        }
    }
    
    if (window == 2 && window_timer == 1)
    {
        grav = 0.25;
        
        if ((temperature >= uspecial1_cost) && (special_down == true)){
            vsp = -10.5;
            temperature -= uspecial1_cost;
            create_hitbox(AT_USPECIAL, 5, x, y); //fires the wide projectile
        } else {
            vsp = -7;            
        }
    }
    
    if (window == 3){
        grav = 0.5;
    }
    
    if (window == 5)
    {
        grav = 0.25;
        
        if (window_timer == 1)
        {
            if ((temperature >= uspecial2_cost) && (special_down == true)){
                vsp = -14;
                temperature -= uspecial2_cost;
                create_hitbox(AT_USPECIAL, 6, x, y); //fires the wide projectile
            } else {
                vsp = -10.5;            
            }
        }
    }

    
    if (window < 6){
        set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);     
    } else {
        set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
        if (vsp >= 0){
            can_wall_jump = true;
        }
        if (free == false){
            set_state( PS_PRATLAND );
        }
    }
}


//DSPECIAL - Open Flame - Summon a flame that sits stationary and deals damage over time when touched. Firing NSpecial through it turns NSpecial into an explosive projectile.
if (attack == AT_DSPECIAL)
{
    if (window == 2 && window_timer == 1 && temperature >= dspecial_cost){
        dspecial_flame = instance_create(x+40*spr_dir,y-36,"obj_article2");
        temperature -= dspecial_cost;
    } 
}

//-------------------- Normals ----------------------

if (attack == AT_DATTACK){
    
    if (window >= 2 && window <= 3 && has_hit_player == true && dattack_target.hitstun > 0){ //Dash attack grab code courtesy of Muno
        dattack_target.x = lerp(dattack_target.x, x + (42*spr_dir), 0.7);
        dattack_target.y = lerp(dattack_target.y, y - 16, 1);
    }
    
    if (window == 6 && was_parried = false)
    {
        iasa_script();
    }
    
}

if (attack == AT_UAIR){
    if (uair_target.hitstun > 0){
        uair_link_timer += 1;
    }
    
    if (uair_target.hitpause){
        uair_link_timer = 0;
    }
    
    if (window >= 2 && window <= 3 && has_hit_player == true && uair_target.hitstun > 0 && uair_link_timer <= 3){ //It's not a grab but it's gonna be coded like one.
        uair_target.x = lerp(uair_target.x, x, 0.025);
        uair_target.y = lerp(uair_target.y, y - 54, 0.15);
    }
}

if (attack == AT_DSTRONG){
    if (window == 5 && was_parried = false){
        iasa_script();
    }
}

if (attack == AT_USTRONG){
    //change the move category to aerial so that landing lag functions
    if (window_timer >= 1)
    {
        if (window >= 3)
        {
            set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
        }
        else
        {
            set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
        }
    }
}

if (attack == AT_FAIR){
    if (hitpause == true){
        landing_lag = 4;
    }
}


//-------------------- Runes ----------------------


if (attack == AT_FTILT){
    if runeD {
        set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 8);
        set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 4);
        set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 10);
    } else {
        reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED);
        reset_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED);
        reset_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH);
    }
}

if (attack == AT_USPECIAL){
    if (runeC || fry_platinum){
        set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
    } else {
        reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
    }
}

if (attack == AT_FAIR){
    if runeH {
        set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
        
        set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 11);
        set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
        
        set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 15);
        set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1.15);
        
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 13);
        set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
        set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.85);
        
        set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 12);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
    } else {
        reset_attack_value(AT_FAIR, AG_LANDING_LAG);
        
        reset_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH);
        reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME);
        
        reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
        reset_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER);
        
        reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
        reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
        
        reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
        reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
    }
    
    if runeJ {
        set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 17);
        set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 11);
    } else {
        reset_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_FAIR, 3, HG_EFFECT);
    }
}

/* alt E rune
if (attack == AT_DAIR){
    if runeE {
        set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
    } else {
        reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
    }
}
*/

if (attack == AT_DATTACK){
    if (runeE && window >= 2 && window <= 3 && has_hit_player && !was_parried){
        can_attack = true;
        can_jump = true;
        can_special = true;
        can_strong = true;
        can_ustrong = true;
    }
}

if (attack == AT_DTILT){
    if (!has_hit_player && window == 3 && window_timer == 1){ //Handles dtilt sound effects for whiff
        sound_play(asset_get("sfx_shovel_hit_light1"));
    }
    
    if runeJ { //If rune J is equipped, put clairen tipper effect on these two moves
        set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 14);
        set_hitbox_value(AT_DTILT, 3, HG_EFFECT, 11);
        
        set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 14);
        set_hitbox_value(AT_DTILT, 4, HG_EFFECT, 11);
    } else {
        reset_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_DTILT, 3, HG_EFFECT);
        
        reset_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_DTILT, 4, HG_EFFECT);
    }
}

if (attack == AT_FSPECIAL){
    if (runeL && window == 2){
        super_armor = true;
    } else {
        super_armor = false;
    }
}

//-----------------------------------Fry Platinum--------------------------------------

if (fry_platinum){
    //framedata
    set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3); 
    set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2); 
    set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8); 
    
    set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 11);
    
    set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3); 
    set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 9); 
    
    set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 7); 
    
    set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 2); 
    set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4); 
    
    
    set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 2); 
    
    set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9); 
    set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 8);
    
    set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3); 
    set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8); 
    
    set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 6); 
    set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 0);
    
    set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 7); 
    
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9); 
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6); 
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5); 
    set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6); 
    set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 13); 
    set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9); 
    set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 15); 
    
    
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 3); 
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8); 
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12); 
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4); 
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3); 
    set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 9);
    
    //damage
    
    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
    set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 1);
    
    //taunt
    
    if (attack == AT_TAUNT){
        if (window > 1 && window < 6){
            super_armor = 1;
        } else {
            super_armor = 0;
        }
        if (window == 4){
            temperature += 50
        }
    }
    
    //holdable nair
    
    if (attack == AT_NAIR){
        set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 9);
        set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 1);
        set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
        set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
        if ((!attack_down || has_hit) && window == 3){
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_EXTRA_1){
    fry_platinum_eraser_timer += 1;
}

