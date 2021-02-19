// attack_update



//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL && window = 3 && window_timer > 1){
    can_fast_fall = 0;
        can_jump = 1;
}

if (attack == AT_TAUNT && window = 3 && window_timer = 15 && taunt_down){
    window = 2;
    window_timer = 0;
}

if (attack == AT_NSPECIAL) && (window != 5 && window != 6){
    air_max_speed = 1.5;
    max_fall = 4;
}

if (attack == AT_NSPECIAL) && (window = 5){
    air_max_speed = 5.5;
    max_fall = 11;
}

if (attack == AT_NSPECIAL && (window == 4 && window_timer = 2)){
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.75);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -2.5);   
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, -0.6 * spr_dir);
}

if (attack == AT_NSPECIAL && (window == 1 || window == 2)){
    if (up_down && (!left_down && !right_down)){
        set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialup"))
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -80);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, -0.4);;
    }
    
    if (up_down && right_down){
        spr_dir = 1;    
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, -0.6);  
    }
    
    if (up_down && left_down){
        spr_dir = -1;    
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.6);  
    }    
    
    if (right_down && (!up_down && !down_down)){
    spr_dir = 1;
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.75);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4.25);   
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, -0.6);
    }   

    if (left_down && (!up_down && !down_down)){
    spr_dir = -1;
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.75);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4.25);   
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.6);    
    }    
    
    if (joy_pad_idle = true){
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.75);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4.25);   
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, -0.6);
    }  
    
    if (get_hitbox_value( AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED ) = 0){
     set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_shootupward"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialair_shootupward"));
    }
    
    if (get_hitbox_value( AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED ) = 7){
     set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_shootupright"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialair_shootupright"));
    }
    
    if (get_hitbox_value( AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED ) = 6.75){
     set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialair"));
    }    

    
    
}

if (attack = AT_NSPECIAL && window = 4 && window_timer = 2){
    


if(spr_dir = 1){
spawn_hit_fx( spikecoordx, spikecoordy, 144 );
}

if(spr_dir = -1){
spawn_hit_fx( spikecoordx, spikecoordy, 144 );
}

}

//FSPECIAL charge



if (attack == AT_FSPECIAL){
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
 if (window = 2 && window_timer = 1 && free = 0){
     y = y - 1;
 }

if (window = 2 && window_timer = 1){
    shake_camera(2, 6); 
}

if (window = 1 && window_timer < 16){
    can_jump = true;
}

if (window = 2 && has_hit_player = true){
    window = 4;
    window_timer = 0;
}

if (window = 3 && window_timer = 8){
    set_state(PS_IDLE_AIR);
}


if (window = 4 && window_timer = 1){
    vsp = -12.5;
}


if (window = 4 && window_timer > 3){
    iasa_script();
}

if (has_rune("H") && window > 1){
    can_attack = true;
    can_special = true;
    can_jump = true;
    can_shield = true;
}


}

if (attack == AT_EXTRA_2){
    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
    can_move = false;
}
if (attack == AT_EXTRA_2 && window_timer > 5){
    hsp = 0;
}

if (attack == AT_EXTRA_2 && window_timer = 1){
    destroy_hitboxes();
}


//NAIR aerial momentum
if (attack == AT_NAIR && nair_boost = 0 && attack_down){
    
    if (window == 2 && window_timer == 1){
        if (has_rune("J")){
        vsp = -4.5;
        }
        
        if (!has_rune("J")){
        vsp = vsp - 1;
        }
    }
    
 if (window == 3 && window_timer == 1){
        vsp = -7.5;
        nair_boost = 1;
    }
}

//NAIR looping rune
if (attack == AT_NAIR && window == 2 && window_timer == 19 && attack_down && nair_rune_loop < 2 && has_rune("J")){
    nair_rune_loop = nair_rune_loop + 1;
    window_timer = 0;
    attack_end();
}

if (attack == AT_NAIR && window == 3){
    nair_rune_loop = 0;
}







//USPECIAL frog spawning
if(attack == AT_USPECIAL && window == 1 && window_timer == 7){

//set speed and destroy old frog
hsp = 0;
leap_cooldown = 22;
with (uspecialfrog){
    instance_destroy(frog_hitbox);
}
instance_destroy(uspecialfrog);

//frog spawn when in air
if (free = 1){
spawn_hit_fx( x, y - 40, 198 );
uspecialfrog = instance_create( x, y - 20, "obj_article1" );
}

//frog spawn when on ground
if (free = 0){
spawn_hit_fx( x + 58 * spr_dir, y-62, 198 );
uspecialfrog = instance_create( x + 58 * spr_dir, y - 72, "obj_article1" );
}

}


if(attack == AT_USPECIAL && window = 1 && window_timer = 1 && free = 1){
can_move = false;
can_fast_fall = false;
air_max_speed = 0;
hsp = 0;
vsp = 0;
max_fall = 0.5;
fast_fall = 0.5;
}



if(attack == AT_USPECIAL && window = 4){
can_move = true;
air_max_speed = 5.5;
can_fast_fall = true;
max_fall = 11;
fast_fall = 14;
}

if (attack == AT_USPECIAL && window = 3 && window_timer = 12 && free = 1){
set_attack( AT_EXTRA_1 );
can_move = true;
air_max_speed = 5.5;
can_fast_fall = true;
max_fall = 11;
fast_fall = 14;
}

if (attack == AT_EXTRA_1 && window_timer == 1){
started_fspecial_charge = 0;
leap_cooldown = 10;
spawn_hit_fx( x, y, 6 );
sound_play( sound_get( "uspecialfrogleap" ) );
charge_sound = 0;
sound_stop(chargesfx);
init_shader();
outline_color = [ 0, 0, 0 ];
vsp = -18;
can_move = true;
air_max_speed = 5.5;
max_fall = 11;
fast_fall = 14;
if (fspecial_boosting = 1){
    fspecial_boosting = 0;
    fspecial_charge = 0;
}
}

if (attack == AT_DATTACK){
if (window = 1 || window = 2 && has_hit_player = false){
    if (spr_dir = 1){
     hsp = 5.45;
    }
    
    if (spr_dir = -1){
     hsp = -5.45;
    }
   
}

if (window = 3){
    hsp = 0;
}
}


//dstrong throw
if (attack == AT_DSTRONG && window = 2 && window_timer = 16 && (has_hit_player = false || hit_player_obj.super_armor = true)){
    window = 7;
    window_timer = 0;
}

if (attack == AT_DSTRONG && window = 4 && window_timer = 1){
    vsp = -9;
}

if (attack == AT_DSTRONG && window = 4){
    can_move = 0;
}

if (attack == AT_DSTRONG && has_hit_player){
    if (window == 3 || window == 2){
    with (hit_player_obj){
        if (super_armor = false){
        if(other.spr_dir = 1){
        self.x = other.x + 30;
        self.y = other.y - 5;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 30;
        self.y = other.y - 5;
    }
        }
}

if (window == 3){
    with (hit_player_obj){
        if (super_armor = false){
        self.hitstop = 8;
        }
    }
}

}

if (attack == AT_DSTRONG && window = 4){
    air_max_speed = 8.5;
    with (hit_player_obj){
        self.hitstop = 8;
        
        if(other.spr_dir = 1){
        self.x = other.x + 20;
        self.y = other.y - 35;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 20;
        self.y = other.y - 35;
    }
}
}


if (attack == AT_DSTRONG && window = 5){
    with (hit_player_obj){
    self.hitstop = 8;
    }
    can_fast_fall = 0;
    max_fall = 30;
    air_max_speed = 7;
    gravity_speed = .7;
    with (hit_player_obj){
        self.x = other.x;
        self.y = other.y - 50;
    }
}

if (attack == AT_DSTRONG && window = 6 && window_timer = 1){
    max_fall = 11;
    gravity_speed = .45;
    air_max_speed = 5.5;
    with (hit_player_obj){
        if(other.spr_dir = 1){
        self.x = other.x + 20;
        self.y = other.y - 5;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 20;
        self.y = other.y - 5;
    }
}
}
}

if (attack == AT_DSTRONG && has_hit_player){
    if (y > room_height){
  with (hit_player_obj){
    self.hitstop = 0;
}
}
}


//new dspecial
if (attack == AT_DSPECIAL){
    if ((window = 6 && window_timer = 6) || window = 2){
    sound_stop(dspecialfalleffect);
}

if (window < 4){
    can_wall_jump = true;
}

if (has_hit_player = true && !has_rune("I") && dspecialhitcount < 1){
    dspecialhitcount = 1;
    window = 1;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -23);
    window_timer = 9;
    attack_end();
    has_hit_player = false;

}

if (has_hit_player = true && has_rune("I") && dspecialhitcount < 3){
    dspecialhitcount = dspecialhitcount + 1;
    window = 1;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -23);
    window_timer = 9;
    attack_end();
    has_hit_player = false;

}

if (attack == AT_DSPECIAL && window = 2 && window_timer = 19 && has_rune("I") && dspecialhitcount = 3){
    move_cooldown[AT_DSPECIAL] = 9999;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
set_state( PS_IDLE_AIR );
}

if (attack == AT_DSPECIAL && window = 2 && window_timer = 11 && !has_rune("I") && dspecialhitcount = 1){
    move_cooldown[AT_DSPECIAL] = 9999;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
set_state( PS_IDLE_AIR );
}



if (window = 6){
    dspecialhitcount = 0;
    move_cooldown[AT_DSPECIAL] = 0;
}

if (attack == AT_DSPECIAL && down_down){
    fall_through = true;

}


if (((window = 2 && window_timer > 5) || window = 3) && dspecialhitcount > 0){
    move_cooldown[AT_DSPECIAL] = 9999;
    iasa_script();
}


}


//Strong super armor rune
if (has_rune("L")){
if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
    super_armor = 1;
}
}

//FSPECIAL super armor rune
if (has_rune("K")){
if (attack == AT_FSPECIAL){
    super_armor = 1;
}
}

//DAIR forward momentum rune
if (has_rune("A")){
   set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 6.5); 
}

//FSPECIAL misfire rune
if (has_rune("H")){
    if (attack == AT_FSPECIAL && window = 4 && window_timer = 1){
        fspecial_misfire = random_func( 0, 7, true );
    }
}




