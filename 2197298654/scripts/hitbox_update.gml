//hitbox_update

if (attack == AT_DTILT){
    if (hitbox_timer == length){
        spawn_hit_fx ( x - 10, y + 14, player_id.leg2die);    
        }
}

if (attack == AT_FSPECIAL_2){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y - 10, 144);   
        sound_play(sound_get ("byebyepianoman"));
        }
}
        
if (attack == AT_FSPECIAL_2){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y - 10, 144);   
        }
}

if (attack == AT_EXTRA_1){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y - 10, 144);   
        sound_play(sound_get ("byebyepianoman"));
        }
}
        
if (attack == AT_EXTRA_1){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y - 10, 144);   
        }
}

//modified from Agumon
if (attack == AT_FSPECIAL_AIR && hitbox_timer <= 80) {
var shortest_dist = 9999;
var shortest_id = noone;
with (asset_get ("oPlayer")) {
if (player != other.player && 
((other.spr_dir > 0 && x > other.x - 29) ||
(other.spr_dir < 0 && x < other.x + 29))) {
var currbug = point_distance (x, y, other.x, other.y);
if (currbug < shortest_dist) {
shortest_dist = currbug;
shortest_id =id;
}
}
}
if (shortest_id != noone) {
    with (shortest_id) {
    var bugdist = y - other.y - (char_height);
    if (y > other.y + (char_height) ) {
        other.vsp = 0.3 + sqrt  (abs(bugdist)) *.25;
    } else if (y < other.y + (char_height) ) {
        other.vsp = -0.3 - sqrt  (abs(bugdist)) *.25;
    } else {
        other.vsp = 0;
    }
    }
    } else {
        vsp *= 0.96;
    }
if (spr_dir > 0 && hsp < 5) { hsp += 0.1; }
if (spr_dir < 0 && hsp > -5) { hsp -= 0.1; }
}

if (attack == AT_FSPECIAL_AIR){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y - 10, 144);   
        sound_play(sound_get ("byebyepianoman"));
        }
}
        
if (attack == AT_FSPECIAL_AIR){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y - 10, 144);   
        }
}

if (attack == AT_FSPECIAL){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y - 10, 144);   
        sound_play(sound_get ("byebyepianoman"));
        }
}
        
if (attack == AT_FSPECIAL){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y - 10, 144);   
        }
}

if (attack == AT_NSPECIAL_AIR){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y - 70, 66);   
        }
}

if (attack == AT_EXTRA_2){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y, 144);   
        sound_play(sound_get ("byebyepianoman"));
        }
}
        
if (attack == AT_EXTRA_2){
    if (hitbox_timer == 1){
        spawn_hit_fx ( x, y, 144);   
        }
}

if (attack == AT_FSPECIAL){
if (!free){
    has_landed = 1
}
}

if (attack == AT_FSPECIAL){
if (has_landed = 1 && free){
spr_dir = -spr_dir
hsp = -hsp
if hsp > 0{
x += 8
}
if hsp < 0{
x -= 8
}
}
}

if (attack == AT_FSPECIAL && hitbox_timer mod 60 ==  0){
create_hitbox(AT_EXTRA_1, 1, x, y - 20)
}

if (attack == AT_FSPECIAL_2 && hitbox_timer mod 60 ==  0){
create_hitbox(AT_EXTRA_1, 2, x, y)
}

if (attack == AT_EXTRA_2 && hitbox_timer mod 100 ==  0){
create_hitbox(AT_EXTRA_2, 2, x, y - 40)
}

if (attack == AT_FSPECIAL_AIR){
if !destroyed {
sound_play(sound_get("pianoman3buzz"), false)
}
else if window_timer > 1{
sound_stop(sound_get("pianoman3buzz"))
} else {
sound_stop(sound_get("pianoman3buzz"))
}

}

if (attack == AT_NSPECIAL && hitbox_timer > 20 && hitbox_timer < 48){
hsp = hsp * .925
vsp = vsp * 1.03
}

if (attack == AT_NSPECIAL && hitbox_timer = 48){
hsp = hsp * -.95
}

if (attack == AT_NSPECIAL && hitbox_timer > 45 && hitbox_timer < 50){
vsp = vsp * .7
hsp = hsp * 1.01
}

if (attack == AT_NSPECIAL && hitbox_timer = 100){
vsp = -vsp * .5
}

if (attack == AT_NSPECIAL && hitbox_timer > 50){
hsp = hsp * 1.035
}

if (attack == AT_NSPECIAL && hitbox_timer > 100){
vsp = vsp * 1.03
}

if (attack == AT_NSPECIAL && hitbox_timer > 45 && hitbox_timer < 100){
create_hitbox(AT_NSPECIAL, 2, x, y)
}

if (attack == AT_NSPECIAL && hitbox_timer > 100){
create_hitbox(AT_NSPECIAL, 3, x, y)
}


if (attack == AT_NSPECIAL){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y, 67);   
        sound_play(asset_get ("sfx_boss_vortex_end"));
        }
}

if (attack == AT_NSPECIAL_AIR){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y - 60, 256);   
        sound_play(sound_get ("moondies"));
        sound_stop(sound_get("lowhum"));
        }
}

if (attack == AT_NSPECIAL_2){
    if (hitbox_timer == length){
        spawn_hit_fx ( x, y, 67);   
        sound_play(asset_get ("sfx_boss_vortex_end"));
        }
}

if (attack == AT_NSPECIAL){
    if (hitbox_timer == length - 14){
        create_hitbox(AT_NSPECIAL, 4, x, y)
        }
}

//halfmoon

if (attack == AT_NSPECIAL_2){
    if (hitbox_timer == length - 14){
        hitbox_timer = 91
        }
}

if (attack == AT_NSPECIAL_2 && hitbox_timer <= 30 && player_id.special_down){
y -= 2
}

if (attack == AT_NSPECIAL_2 && hitbox_timer == 30){
vsp = 0
hsp = 0
grav = 0
}

if (attack == AT_NSPECIAL_2 && player_id.special_pressed && player_id.window_timer = 1 && player_id.moonout = 1){
hitbox_timer = length - 1
player_id.moonout = 0
}

if (attack == AT_NSPECIAL_2 && player_id.moontype != 2){
hitbox_timer = length
player_id.moonout = 0
spawn_hit_fx ( x, y, 67);   
        sound_play(asset_get ("sfx_boss_vortex_end"));
}

if (attack == AT_NSPECIAL_AIR  && hitbox_timer mod 30 ==  0){
        create_hitbox(AT_NSPECIAL_AIR, 2, x, y - 60)
        spawn_hit_fx ( x, y - 60, player_id.moonaura); 
        spawn_hit_fx ( x, y - 60, 196); 
        }
 
if (attack == AT_NSPECIAL_AIR && hitbox_timer == 1){
sound_play(sound_get("lowhum"), true)
}


if (attack == AT_USPECIAL_2){
if (hitbox_timer = length){
spawn_hit_fx ( x, y, player_id.soundwave_effect);   
        sound_play(asset_get ("sfx_ice_shatter"));
}
}

if (attack == AT_USPECIAL){
if (hitbox_timer = length - 4){
spawn_hit_fx ( x + 10, y - 24, player_id.soundwave_effect);   
sound_play(asset_get ("sfx_ice_shatter"));
}
}

if (player_id.state = PS_PRATFALL && hitbox_timer == 1){
    spawn_hit_fx(x, y, 13);
    sound_play(asset_get ("sfx_boss_explosion"));
}