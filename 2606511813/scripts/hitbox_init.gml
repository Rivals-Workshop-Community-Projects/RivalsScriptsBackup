//hitbox_init

user_event(0)



reset_lifetime = false;
increment = 0;

sfx_arrow = sound_get("arrow_sfx")

trail_length = player_id.trail_length

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    projSpeed = abs(hsp + vsp);
    trailArray = array_create(trail_length);
    arrow_num = player_id.arrow_count;
    sound_play(sfx_arrow, false, noone, 0.2)
    orig_angle = kb_angle
}

is_pitbox = true; //detection for pit reflection code
reflect_obj = 0;
was_reflected = false;
reflection_timer = 10;
reflection_count = 0;

prev_hitbox_group = 0;

trail_array = array_create(5, [undefined,undefined])

if attack == AT_FSPECIAL && hbox_num == 1 {
    depth = -4
}

if attack == AT_FTHROW && hbox_num == 1 {
    depth = -6
    projSpeed = abs(hsp + vsp);
    trailArray = array_create(20);
    fspec_num = player_id.fspec_count;
    
    if player_id.up_down {
        vsp -= (player_id.echo ? 6 : 3);
        hsp -= (player_id.echo ? 5 : 0)*spr_dir;
        y -= (player_id.echo ? 12 : 20);
    }
    if player_id.down_down {
        vsp += (player_id.echo ? 6 : 3);
        hsp -= (player_id.echo ? 5 : 0)*spr_dir;
        y += (player_id.echo ? 12 : 20);
    }
    
    prev_vsp = vsp;
}