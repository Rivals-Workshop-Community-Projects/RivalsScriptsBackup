// attack_update
if (attack == AT_FSTRONG && clef == 1 && state_timer == 1){
attack_end();
set_attack(AT_FSTRONG_2);
clef = 0;
}




//clefs
if (attack == AT_FSTRONG){
clef = 1;
}

if (attack == AT_DSPECIAL && state_timer >= 8 && state_timer <= 50){
    super_armor = 1
    soft_armor = 7
} else {
super_armor = 0
}
//walljump

if (attack == AT_USPECIAL_2){
    can_wall_jump = true;
}

if (attack == AT_USTRONG && window = 2 && window_timer = 1){
    sound_play(asset_get("sfx_clairen_swing_strong"))
}

//aerial recovery
if (attack == AT_USPECIAL && window == 1 && window_timer == 1 && free){
attack_end();
set_attack(AT_USPECIAL_2);
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
};

if (attack == AT_UAIR){
    move_cooldown[AT_UAIR] = 40; 
}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 30; 
}

if (attack == AT_DATTACK && attack_pressed && state_timer > 30){
    window = 3;
}

if (attack == AT_DTILT){
    move_cooldown[AT_DTILT] = 30; 
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 60; 
}

if (attack == AT_FSPECIAL_2){
    move_cooldown[AT_FSPECIAL] = 120; 
}

if (attack == AT_FSPECIAL_AIR){
    move_cooldown[AT_FSPECIAL] = 20; 
}
    
if (attack == AT_EXTRA_2){
    move_cooldown[AT_FSPECIAL] = 100; 
    
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 60; 
}

if (attack == AT_NSPECIAL_2){
    move_cooldown[AT_NSPECIAL] = 90; 
}

if (attack == AT_NSPECIAL_AIR){
    move_cooldown[AT_NSPECIAL] = 400; 
}


//lilman chage
if (attack == AT_FSPECIAL && window == 1 && window_timer == 1 && lilman = 2){
attack_end();
set_attack(AT_FSPECIAL_2);
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1 && lilman = 3){
attack_end();
set_attack(AT_FSPECIAL_AIR);
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1 && lilman = 4){
attack_end();
set_attack(AT_EXTRA_2);
}

//moons
if (attack == AT_NSPECIAL && window == 1 && window_timer == 1 && moontype = 2 && moonout == 0){
attack_end();
set_attack(AT_NSPECIAL_2);
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 1 && moontype = 2 && moonout == 1){
attack_end();
set_attack(AT_NSPECIAL_2);
window = 4
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 1 && moontype = 1){
attack_end();
set_attack(AT_NSPECIAL_AIR);
}


//taunt csupport
if (attack == AT_TAUNT && window == 1 && window_timer == 1){
with(instance_furthest(x, y, asset_get("oPlayer"))){
if(supportschild == 0 && defchar == 0 && localsupport == 0){
with (other){
sound_play(sound_get("sandsong"))
}
}
}
}

if (attack == AT_TAUNT){
suppress_stage_music (0.1, 0.1);
}

if (attack == AT_TAUNT && window == 1 && window_timer == 1){
with(instance_furthest(x, y, asset_get("oPlayer"))){
if(supportschild == 1 && id != other.id){
sound_play(sound_get("mchildsong"))
} else if (defchar == 1) {
with (other){
sound_play(sound_get("lionsong"))
}
} else if (defchar == 2) {
with (other){
sound_play(sound_get("orcasong"))
}
} else if (defchar == 3) {
with (other){
sound_play(sound_get("wrastsong"))
}
} else if (defchar == 4) {
with (other){
sound_play(sound_get("rocksong"))
}
} else if (defchar == 5) {
with (other){
sound_play(sound_get("smokesong"))
}
} else if (defchar == 6) {
with (other){
sound_play(sound_get("leafsong"))
}
} else if (defchar == 7) {
with (other){
sound_play(sound_get("absasong"))
}
} else if (defchar == 8) {
with (other){
sound_play(sound_get("bearsong"))
}
} else if (defchar == 9) {
with (other){
sound_play(sound_get("orisong"))
}
} else if (defchar == 10) {
with (other){
sound_play(sound_get("frogsong"))
}
} else if (defchar == 11) {
with (other){
sound_play(sound_get("swordsong"))
}
} else if (defchar == 12) {
with (other){
sound_play(sound_get("sylsong"))
}
} else if (defchar == 13) {
with (other){
sound_play(sound_get("snakesong"))
}
} else if (defchar == 14) {
with (other){
sound_play(sound_get("shovelsong"))
}
} else if (defchar == 16) {
with (other){
sound_play(sound_get("sandsong"))
}
} else if (defchar == 17) {
with (other){
sound_play(sound_get("coolesteversong"))
} 
} if(id == other.id){
sound_play(sound_get("mchildsong"))
} if(url == 2152557624){
with (other){
sound_play(sound_get("gooeysong"))
} 
} if(url == 2178888206){
with (other){
sound_play(sound_get("borksong"))
} 
} 
}
}


//dash attack
if (has_hit_player && !hitpause && (window == 1) && (attack == AT_DATTACK )){ //Drag people along
        hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,1);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y - 20,0.1);


}