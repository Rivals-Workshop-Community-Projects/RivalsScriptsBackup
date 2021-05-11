// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT && window_timer > 20) {
    if (taunt_down){
        window = 1;
        window_timer = 20;
    }
}

if (attack == AT_TAUNT && taunt_down){
    if (special_pressed){
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 6);
        window = 2;
    }
    if (attack_pressed){
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 13);
        window = 2;
    }
    if (window == 3){
        window = 1;
        window_timer = 20;
    }
}

//FTilt - Hit from behind
/*
if (attack == AT_FTILT && window == 1 && window_timer == 5){
    with (oPlayer){
        if (other.spr_dir == spr_dir){
            other.ftilt_back = true;
        }
        else {
            other.ftilt_back = false;
        }
    }
    if (ftilt_back == true){
        set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 15);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    }
    if (ftilt_back == false){
        set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    }
}
*/

//Visual Effects Gas
{
//DTilt Visual Effect
if (attack == AT_DTILT && window == 1){
    gas_dtilt_cont = 0;
    gas_dtilt_posx = x;
    gas_dtilt_posy = y-10;
}

if (attack == AT_DTILT && window > 1){
    if (window == 2 && window_timer == 1){
        gas_dtilt_posx = x;
        gas_dtilt_posy = y;
    }
    if (!hitpause){
        gas_dtilt_cont += .35;  
    }
    
}

//UStrong Visual Effect
if (attack == AT_USTRONG && window == 1){
    gas_ustrong_cont = 0;
    var gas_used = false;
    if gas_used == false
    {
        gas_used = true;
        if (spr_dir == 1){
                gas_ustrong_posx = x; 
            }
        if (spr_dir == -1){
                gas_ustrong_posx = x-20; 
            }
    }
    gas_ustrong_posy = y;
}

if (attack == AT_USTRONG && window > 2){
    if (window == 3 && window_timer == 1){
        if (spr_dir == 1){
            gas_ustrong_posx = x; 
        }
        if (spr_dir == -1){
            gas_ustrong_posx = x-20; 
        }
        gas_ustrong_posy = y;
    }
    if (!hitpause){
        gas_ustrong_cont += .2;  
    }
    
}

//FAir Visual Effect
if (attack == AT_FAIR && (window == 3 && window_timer >= 8))
{
    can_jump = true;
}

if (attack == AT_FAIR && window == 1){
    gas_direction();
    gas_fair_cont = 0;
    gas_fair_posx = x;
    gas_fair_posy = y;
}

if (attack == AT_FAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_fair_posx = x;
        gas_fair_posy = y;
        gas_fair_cont = 0.01;
    }
}

//DAir Visual Effect
if (attack == AT_DAIR && window == 1){
    gas_direction();
    gas_dair_cont = 0;
    gas_dair_posx = x;
    gas_dair_posy = y;
}

if (attack == AT_DAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_dair_posx = x;
        gas_dair_posy = y;
        gas_dair_cont = 0.01;
    }
}
if (attack == AT_DAIR && window > 1)
{
    if (window == 2 && window_timer >=9)
    {
        can_jump = true;
    }
}
//BAir Visual Effect
if (attack == AT_BAIR && window == 1){
    gas_direction();
    gas_bair_cont = 0;
    gas_bair_posx = x;
    gas_bair_posy = y;
}

if (attack == AT_BAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_bair_posx = x;
        gas_bair_posy = y;
        gas_bair_cont = 0.01;
    }
}

//NSpecial 2 Visual Effect
if (attack == AT_NSPECIAL_2 && window == 1){
    gas_nspecial_cont = 0;
    gas_nspecial_posx = x;
    gas_nspecial_posy = y;
}

if (attack == AT_NSPECIAL_2 && window > 1){
    if (window == 2 && window_timer == 1){
        gas_nspecial_posx = x;
        gas_nspecial_posy = y+10;
    }
    if (!hitpause){
        gas_nspecial_cont += .01;  
    }
    
}
}

//DAttack Stops at ledge/hit
/*
if (attack == AT_DATTACK && window == 3){
    if (window_timer == 1){
        dattack_cont1 = x;
    }
    if (window_timer == 11){
        dattack_cont2 = x;
    }
}

if (attack == AT_DATTACK && window == 3 && !hitpause && (!attack_down || dattack_cont1 == dattack_cont2)){
    window_timer = 1;
    window = 4;
}
*/

if (attack == AT_DATTACK){
    if (window == 2 && window_timer == 12 && attack_down){
        window_timer = 0;
    }
}

//Specials Diagonally
if ((attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL) && window == 1){
    if (up_down && (right_down || left_down)){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 20);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -20);
    }
    if (down_down && (right_down || left_down)){
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 20);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 20);
    }
    if (!up_down && !down_down){
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
    }
    if (!right_down && !left_down){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 0);
    }
}

if (attack == AT_DSPECIAL){
    fall_through = true;
}

//Spawn Cloud
if (attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL){
    levei_parry = false;
    if (window == 2 && window_timer == 4){
        instance_create(x,y,"obj_article1"); 
    }
    if (window == 3 && window_timer == 3){
        instance_create(x,y,"obj_article1"); 
    }
    if (window == 1 && window_timer == 1){
        tokens += 1.1; 
    }
    if (window == 1 && window_timer > 1 && shield_pressed){
        window = 4;
    }
    
}

//Cloud Detonate
if (attack == AT_NSPECIAL && window == 1){
    if (window_timer == 1){
       explosion_cont = 0; 
    }
    if (window_timer == 5){
       spawn_hit_fx( x, y, claw_effect); 
    }
}

if (attack == AT_NSPECIAL_2){
    tokens = 3.1;
}

#define gas_direction()
{
    if spr_dir == 1
    {
        gas_dir = 1;
    }
    if spr_dir == -1
    {
        gas_dir = -1;
    }    
}