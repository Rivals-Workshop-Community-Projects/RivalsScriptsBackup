
user_event(9)

if Drak_icecream == 1 {
    Drak_icecream = 0 
    move_cooldown[AT_USPECIAL] = 100
    move_cooldown[AT_EXTRA_1] = 0
    set_attack(AT_EXTRA_1)
    window = 2
    window_timer = 10
    take_damage(player,-1,-30)
}


//print(ragemode)

/*
if get_player_color(player) >= 1 {
    
    if ragemode == 0 {
        set_color_profile_slot( get_player_color(player), 7, ar3, ag3, ab3 ); 
        set_color_profile_slot( get_player_color(player), 1, ar2, ag2, ab2); 
        
    } else {
        
        set_color_profile_slot( get_player_color(player), 7, ar4, ag4, ab4 ); 
        set_color_profile_slot( get_player_color(player), 1, ar1, ag1, ab1); 
    }
    
    init_shader();
}
 */  
    
if move_cooldown[AT_USPECIAL] % 4 == 0 && hit_player_obj != -4 {
    
    move_cooldown[AT_USPECIAL] -= 1
    
   set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_HSPEED, -8 + random_func(6,17,true));
   set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_VSPEED, -8 + random_func(5,17,true));
   
      create_hitbox(AT_USPECIAL,9,hit_player_obj.x,hit_player_obj.y - 40 )
}

if get_gameplay_time() == 3 {
  sound_play(sound_get("tauntflash"),false,noone,.6, 1)  
  set_attack(AT_TAUNT)
  window = 1
  window_timer = 1
}

if ragemode {
    
    visible = true
    
    if ragemode > 500 {
         ragemode = 500
    }
    has_walljump = true
    move_cooldown[AT_EXTRA_3] = 5
    
    famix = x
    famiy = y
    
    if get_gameplay_time() % 10 == 1 {
        take_damage(player,-1,1)
        sound_play(sound_get("jumpcrunch"),false,noone,.7, .9 - random_func(1,20,true)/100)
    }
    
if walk_speed == 5 {    
walk_speed = 7;
initial_dash_speed = 7  ;
dash_speed = 7;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; 

walljump_hsp = 0;
walljump_vsp = 12;
walljump_time = 35;  

set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_IGNORES_PROJECTILES, true);

}

if state == PS_WALL_JUMP {
    
    if state_timer == 1 {
    spr_dir *= -1
    }
    
   if (state_timer % 6 == 0 or state_timer == 1)  {
    sound_stop(sound_get("tinythud"))
    sound_play(sound_get("tinythud"),false,noone,0.6, 1 + random_func(1,30,true)/100)
   }
   
}

} else {


if walk_speed != 5 {    
walk_speed = 5;
initial_dash_speed = 5;
dash_speed = 5;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; 

walljump_hsp = 4;
walljump_vsp = 9;
walljump_time = 32;

set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("whoosh"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_IGNORES_PROJECTILES, true);
}
    
    
}

if move_cooldown[AT_EXTRA_2] == 1 {
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("swingw2"),false,noone,.8, 1.1)
}

famix += floor(((x-64*spr_dir)-famix)/16)
famiy += floor((y+16-famiy)/16)

if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    set_state(PS_IDLE);
    sound_stop(asset_get("sfx_roll"));
}

//mute base game sounds
switch(state){

    case PS_DASH_START:
        sound_stop(asset_get("sfx_dash_start"));
     break;

}

if ragemode != 0 && (state == PS_DASH or state == PS_WALK) && (state_timer % 8 == 0 or state_timer == 1)  {
    sound_stop(sound_get("tinythud"))
    sound_play(sound_get("tinythud"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_DASH or state == PS_WALK) && ( state_timer == 1)  {
    sound_stop(sound_get("punch"))
    sound_play(sound_get("punch"),false,noone,0.4, .9 - random_func(1,30,true)/100)
}

if !free or state_cat == SC_HITSTUN or state == PS_WALL_JUMP{

}

if brage >= 97 {
  famix += 20 - random_func(1,41,true)    
  famiy += 20 - random_func(2,41,true)    
}

if brage == 100 && state_cat != SC_HITSTUN && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    
    move_cooldown[AT_EXTRA_1] = 0
    set_attack(AT_EXTRA_1)
    window = 1
    window_timer = 1
    
    spawn_hit_fx(famix,famiy,scyfx)
    
    brage = 0
    
    with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
}

if bragesub < 0 {
    bragesub = 0
} else if bragesub > 100 { 
    bragesub = 100
}

if brage > bragesub {
    
    if abs(bragesub - brage) > 40 {
    brage -= .2
    }
    if abs(bragesub - brage) > 20 {
    brage -= .2
    }
    brage -= .2
    
} else if brage < bragesub {
    
    if get_gameplay_time() % 15 == 1 {
      sound_play(sound_get("jumpcrunch"),false,noone,.7, 1 - random_func(1,20,true)/100)
    }
    
    if get_gameplay_time() % 30 == 1 {
        take_damage(player,-1,1)
    }

    
    if abs(bragesub - brage) > 20 {
    brage += .1
    }
    
    if abs(bragesub - brage) > 10 {
    brage += .1
    }
    
    brage += .1
    
}

if !ragemode && state_cat != SC_HITSTUN && !hitpause /* && brage = bragesub */ {
    if get_gameplay_time() % 20 == 0 {
    bragesub += 1
    brage += 1    
    }
}

old_spr_dir = spr_dir;

