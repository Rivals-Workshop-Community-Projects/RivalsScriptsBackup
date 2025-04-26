//death

nspecial_charge = 0;
nspec_fully_charged = false;
nspec_is_casting = false;

/*
if instance_exists(toadie_obj) {
    ds_list_add(particles, {
        sprite: sprite_get("toadie_die"),
        x: toadie_obj.x,
        y: toadie_obj.y,
        hsp: 3 - random_func(3, 6, true),
        vsp: -5,
        xaccel: 0,
        yaccel: 0.4,
        angle: 0,
        torque: 6,
        lifetime: 300,
        xscale: toadie_obj.spr_dir,
        yscale: 1
    })	
    spawn_hit_fx(toadie_obj.x, toadie_obj.y, toadie_smoke)
	instance_destroy(toadie_obj)
}*/

sound_play(sound_get("kamek_die"))