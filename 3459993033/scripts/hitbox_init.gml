//hitbox init, FOR PROJECTILES SPECIFICALLY
if attack == AT_NSPECIAL and hbox_num == 1 {
    normal_nspecial_color = make_color_rgb(random_func_2(player_id.player+2,255,true), random_func_2(player_id.player+3,255,true),random_func_2(player_id.player+4,255,true));
}

if (attack == AT_NSPECIAL && hbox_num == 2){
     sound_play(sound_get("magic_shoot"), false, noone, 1, 1);
 }
 
 if (attack == AT_FSPECIAL_2 && hbox_num == 2){
    tick_timer = 0;
    damage_sound = sound_get("smash_magic_light");
    particle_seed = random_func(0, 100, true);
    is_fspec_magic = true;
    is_multihitting = false;
 }
 
if attack == AT_DSPECIAL and hbox_num == 3 {
    detonation_timer = 10;
    detonating = false;
    sound = sound_play(sound_get("bobomb"))
}

if attack == AT_DSPECIAL and hbox_num == 2 {
    //die_on_ground = false;
}