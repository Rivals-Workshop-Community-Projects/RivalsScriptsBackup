//article1_update
vsp = vsp + 0.2

frog_lifetime = frog_lifetime + 1

if (free = 0 && frogbouncea = 0){
sprite_index = sprite_get("uspecialfrogidle");
image_speed = .25;
}

if (dstrong_sfx_bounce = 1){
  dstrong_sfx_timer = dstrong_sfx_timer + 1  
}

if (dstrong_sfx_timer = 15){
    dstrong_sfx_bounce = 0;
    dstrong_sfx_timer = 0;
}

if (frog_lifetime = 400){
    spawn_hit_fx( x, y - 15, 198 );
     instance_destroy();
     sound_play(sound_get("uspecialfrogdespawn"));
}

if (y > room_height + 100){
    instance_destroy();
}

if (dstrong_bounce = 1){
    instance_destroy(frog_hitbox);
    spawn_hit_fx( x, y - 15, 198 );
    instance_destroy();
}

with (player_id){
if (leap_cooldown = 0 && (point_distance( x, y, other.frog_hitbox.x, other.frog_hitbox.y )) < 42 ){
    
    if (attack == AT_DSTRONG && window = 5){
        if (other.dstrong_sfx_bounce = 0){
            other.dstrong_sfx_bounce = 1;
            sound_play( sound_get( "uspecialfrogleap" ) );
            spawn_hit_fx( x, y, 6 );
            other.dstrong_bounce = other.dstrong_bounce + 1;
        }
        vsp = -14;
        max_fall = 11;
        fast_fall = 17; 
        air_max_speed = 5.5;
        gravity_speed = .45;
        attack_end();
    }



    
    if (free = 0){
    set_attack( AT_EXTRA_1 );
    other.image_speed = .4;
    other.image_index = 0;
    other.frogbouncea = 20;
    other.sprite_index = sprite_get("uspecialfrogbounce");
    spawn_hit_fx( x, y, 6 );
    }
    
}

    if (state = PS_ATTACK_AIR && attack = AT_FSPECIAL && window != 1 && (point_distance( x, y, other.frog_hitbox.x, other.frog_hitbox.y )) < 24){
    y = y - 15;
    var frogfspecialdir = point_direction(x, y, other.x, other.y - 100);
    var frogfspecialspeed = 16;
    hsp = lengthdir_x(frogfspecialspeed, frogfspecialdir);
    vsp = -14;
    other.image_speed = .4;
    other.image_index = 0;
    other.frogbouncea = 20;
    other.sprite_index = sprite_get("uspecialfrogbounce");
    spawn_hit_fx( x, y, 6 );
    set_attack( AT_EXTRA_2 );
              shake_camera(5, 5); 
                sound_play( sound_get( "fspecialfrogbounce" ) );
    }    
    
        if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack = AT_DSPECIAL && window != 1 && (point_distance( x, x, other.frog_hitbox.x, other.frog_hitbox.x )) < 52 && (point_distance( y, y, other.frog_hitbox.y, other.frog_hitbox.y )) < 16){
    dspecialhitcount = -1
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("uspecialdspecial"));
    window = 1
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -19);
    window_timer = 18;
    spawn_hit_fx( other.x, other.y - 15, 198 );
    other.frog_hitbox.x = 9999;
    other.frog_hitbox.y = 9999;
    instance_destroy();

    }
    
}

with (oPlayer){
    if (player != other.player && free = 0 && (point_distance( x, y, other.frog_hitbox.x, other.frog_hitbox.y )) < 48 ){
    other.image_speed = .4;
    other.image_index = 0;
    other.frogbouncea = 20;
    other.sprite_index = other.fbsprite;
    }
}

with (asset_get("pHitBox")){
    if (attack == AT_NSPECIAL){
if (player_id == other.player_id && other.frogbouncea = 0 && other.frogspikebounce = 0 && (abs(y - other.frog_hitbox.y) < 10) && (abs(x - other.frog_hitbox.x) < 38) && was_parried = false ){
    frogspikebounce = 1;
    other.frogbouncea = 20;
    spawn_hit_fx( x, y, 6 );
    other.sprite_index = sprite_get("uspecialfrogbounce");
    other.image_index = 0;
    other.image_speed = .4;
    sound_play( sound_get( "uspecialfrogspikeballlaunch" ) );
    vsp = 18;
    img_spd = img_spd * 0.65
    hsp = hsp * 0.65;
}


if (other.frogbouncea = 0){
    frogspikebounce = 0;
}

}
}

if (frogbouncea > 0){
    frogbouncea = frogbouncea - 1;
}




frog_hitbox.x = x;
frog_hitbox.y = y - 18;

