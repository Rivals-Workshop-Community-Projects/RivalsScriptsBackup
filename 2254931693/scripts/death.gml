// called when the character gets KO'd
with (uspecialfrog){
    instance_destroy(frog_hitbox);
}
instance_destroy(uspecialfrog);
frog_spawn_in_air = 0;
frog_air_leap = 1;
nair_rune_loop = 0;
nair_boost = 0

sound_stop(chargesfx);
charge_sound = 0;
fspecial_charge = 0;
started_fspecial_charge = 0;
max_fall = 11;
fast_fall = 14; 
sprite_change_offset("hurt", 48, 88);
air_max_speed = 5.5;
gravity_speed = .45;
dspecialhitcount = 0;
move_cooldown[AT_DSPECIAL] = 0;
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);

if (attack == AT_DSTRONG){
    with (hit_player_obj){
        self.hitstop = 0;
    }
}
