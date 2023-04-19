
if state == PS_RESPAWN {
    spr_dir = 1 //didnt know how to change the platform sprite so this will do instead
}
//intro
if (introTimer2 < 6) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered
if get_gameplay_time() == 10 || get_gameplay_time() == 40 {
    sound_play(sound_get("teleport"))
}
//intro

//afterimage instance
//for uspecial
if(attack == AT_USPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && image_index > 1 && image_index < 8 && get_gameplay_time() % 5 == 0 && !hitpause){
    
    after_image_timer++;
    if(after_image_timer == 10) after_image_timer = 0;
    use_spr = sprite_get("uspecial_2_spin");
    after_image[after_image_timer] = {sprite_index:use_spr, image_index:image_index, x:x, y:y - 32, spr_dir:spr_dir, alpha:9, spr_angle:uspec_angle, xscale:1, yscale:1};
    
//for add-on alpha    
}else if(ring_equipped == 0){
    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack != AT_DSPECIAL) && get_gameplay_time() % 6 == 0){
        
        after_image_timer++;
        if(after_image_timer == 10) after_image_timer = 0;
        after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
    }

//for add-on omega
}else if(ring_equipped == 1){
    if((state == PS_WALK || state == PS_DASH_TURN || state == PS_WAVELAND || abs(hsp) > 6) && get_gameplay_time() % 6 == 0){
            
        after_image_timer++;
        if(after_image_timer == 10) after_image_timer = 0;
        after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
    }

//for add-on epsilon
}else if(ring_equipped == 2){
    /*breathes deeply*/
    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (window_timer == 0 || (attack == AT_UTILT && window_timer == 3)) && !hitpause &&
    ((attack == AT_DTILT && (window == 2)) || (attack == AT_UTILT && (window == 2)) || (attack == AT_USTRONG && (window == 3)) ||
    (attack == AT_DSTRONG && (window == 3 || window == 5)) ||(attack == AT_NAIR && (window == 2 || window == 3)) || (attack == AT_FAIR && (window == 3)) ||
    (attack == AT_DAIR && (window == 2)) || (attack == AT_BAIR && (window == 2)) || (attack == AT_NSPECIAL && (window == 4 || window == 7)))){
        
        after_image_timer++;
        if(after_image_timer == 10) after_image_timer = 0;
        after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index + 1, x:x, y:y, spr_dir:spr_dir, alpha:12, spr_angle:0,
            xscale:epsilon_buff, yscale:epsilon_buff};
    }
}

if(hud_close > -1){
    hud_close--;
}
for(var i = 0; i < 3; i++){
    if(ring_cd[i] > -1){
        ring_cd[i]--;
    }
    if(hud_flash_timer[i] > -1){
        hud_flash_timer[i]--;
    }
    
    if(ring_cd[i] == 0){
        hud_flash_timer[i] = 6;
        sound_play(asset_get("mfx_player_ready"), false, noone, 0.6, 0.9);
    }
}

//fade handler
for (var i = 0; i < 10; i++){
   if(after_image[i] != -1 && get_gameplay_time() % 2 == 0){
       after_image[i].alpha--;
       if(after_image[i].alpha == 0){
           after_image[i] = -1;
       }
   } 
}

if(ring_equipped > -1){
    ring_timer++;
    
    if(ring_timer >= ring_time_max){
        sound_play(asset_get("mfx_unstar"), 0, noone, 1.0, 1.1);
        ring_cd[ring_equipped] = ring_time_cd;
        ring_equipped = -1;
        ring_timer = -1;
        ring_follow = -1;
        hud_close = 4;
    }
}

//omega movement buffs
var obuff = (ring_equipped == 1);
walk_speed = omega_walk_speed[obuff];
walk_accel = omega_walk_accel[obuff];
initial_dash_speed = omega_initial_dash_speed[obuff];
dash_speed = omega_dash_speed[obuff];
wave_land_adj = omega_wave_land_adj[obuff];
leave_ground_max = omega_leave_ground_max[obuff];
max_jump_hsp = omega_max_jump_hsp[obuff];
air_max_speed = omega_air_max_speed[obuff];


if(ring_follow != -1){
    if(ring_follow.life_timer < 8){
        ring_follow.image_index = floor(ring_follow.life_timer / 4);
    }else if(ring_follow.life_timer == 8) ring_follow.image_index = 2;
    ring_follow.life_timer++;
    if((ring_time_max - ring_follow.life_timer) < 48){
        ring_follow.image_alpha = 0.5 + (0.2 * sin(get_gameplay_time() / 6));
    }
    
    ring_follow.x = lerp(ring_follow.x, x-(spr_dir * 32), 0.2);
    ring_follow.y = lerp(ring_follow.y, y - 12, 0.2) + (1 * sin(get_gameplay_time() / 32));
    ring_follow.spr_dir = (ring_follow.x == x? 1 : sign(x - ring_follow.x));
}

suppress_hud = false;