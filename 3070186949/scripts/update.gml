with hit_fx_obj {
    if hit_fx == other.small_hfx or hit_fx == other.big_hfx or hit_fx == other.medium_hfx  {
        depth = other.depth + 1
    }
}

if (instance_exists(record_player_obj) && collision_circle(x, y, 42, record_player_obj, false, false)){
    near_player = true;
} else near_player = false;

effect_frame += 0.15;

if (bg_alpha > 0 && state != PS_ATTACK_GROUND ){
        bg_alpha -= 0.1;
    }
            if (near_player){
                switch (record_player_obj.blook_record + 1){
                case 1:
                tune = sound_get("mus_spooktune");
                break;
                case 2:
                tune = sound_get("mus_spookwave");
                break;
                case 3:
                tune = sound_get("mus_ghouliday");
                break;
                }
            } else {
            switch (blook_record + 1){
                case 1:
                tune = sound_get("mus_spooktune");
                break;
                case 2:
                tune = sound_get("mus_spookwave");
                break;
                case 3:
                tune = sound_get("mus_ghouliday");
                break;
            }
            }
if (!free or state == PS_WALL_JUMP or state == PS_WALL_TECH) {
    dspecial_used = false;
    fspecial_used = false;
    uair_times = 0
}

if (state == PS_WALL_JUMP or state == PS_WALL_TECH)
{
    dspecial_placement_cooldown = 0;
    fspecial_usage_cooldown = 0;
}

if fspecial_used or fspecial_usage_cooldown > 0 {
    move_cooldown[AT_FSPECIAL] = 2;
    fspecial_usage_cooldown = max(fspecial_usage_cooldown-1, 0);
}

if dspecial_used or dspecial_placement_cooldown > 0{
    move_cooldown[AT_DSPECIAL] = 2;
    dspecial_placement_cooldown = max(dspecial_placement_cooldown-1, 0);
}


switch (state) {
    case PS_WAVELAND:
        sound_stop(charge_sound)
    break;
    case PS_AIR_DODGE:
        if state_timer == 3 {
            sound_stop(charge_sound)
            charge_sound = sound_play(sound_get("sfx_ut_ghost_sandwich"), false, noone, 0.8, 1)
        }
    break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_2) and !fspecial_ledgeforgiven and (free and place_meeting(x+hsp,y,asset_get("par_block")))
        {
            for (var i = 0; i < 35; i++)
            {
                if fspecial_ledgeforgiven break;
                
                if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                {
                    y -= i;
                    fspecial_ledgeforgiven = true;
                }
            }
        }
    
        switch (attack) {
            case AT_USPECIAL:
                if window_timer == 0 and window == 2 and !hitpause {
                    if (instance_exists(record_player_obj) and !shield_down) {
                        spawn_hit_fx(x,y-14,medium_hfx)
                        x = record_player_obj.x;
                        y = record_player_obj.y-14;
                        instance_destroy(record_player_obj)
                        move_cooldown[AT_DSPECIAL] = 150;
                    }
                    spawn_hit_fx(x,y-4,uspecial_vfx)
                }
            break;
            case AT_DSPECIAL:
                if window == 2 and window_timer == 0 and !hitpause
                {
                    print("done")
                    dspecial_used = true;
                    dspecial_placement_cooldown = 60;
                    
                    sound_play(asset_get("sfx_forsburn_reappear_hit"))
                    
                    if (!instance_exists(record_player_obj))
                    {
                        record_player_obj = instance_create(x,y+2,"obj_article1")
                        record_player_obj.blook_record = blook_record;
                        record_player_obj.sprite_index = sprite_get(`table_${blook_record+1}`)
                        record_player_obj.spr_dir = spr_dir;
                    }
                    else {
                        var position = -36
                        repeat (2) {
                            var fx = spawn_hit_fx(record_player_obj.x + position, record_player_obj.y, dspecial_entry_vfx)
                            position -= 2*position
                            
                            fx.depth = depth + 1
                        }
                        record_player_obj.x = x;
                        record_player_obj.y = y+2;
                        record_player_obj.blook_record = blook_record;
                        record_player_obj.sprite_index = sprite_get(`table_${blook_record+1}`)
                        record_player_obj.spr_dir = spr_dir;
                    }
                    
                    var pos = -36
                    repeat (2) {
                        var fx = spawn_hit_fx(record_player_obj.x + pos, record_player_obj.y, dspecial_entry_vfx)
                        pos -= 2*pos
                        
                        fx.depth = depth + 1
                    }
                    
                    blook_record = (blook_record + 1) mod num_records
                }
            break;
            case AT_NSPECIAL:
                switch window {
                    case 1:
                        if window_timer == 0 and !hitpause
                            sound_play(sound_get("sfx_ut_blink"), false, noone, 0.7)
                        break;
                    case 2:
                        if window_timer == 0 and !hitpause {
                            var record = create_hitbox(attack, blook_record+1, x+ (10*spr_dir) , y - 34)
                            if (blook_record == 1) {
                                record.hsp = 16 * spr_dir;
                                record.initial_speed = 20
                                print(record.initial_speed)
                            }
                            
                            blook_record = ((blook_record + 1) mod (num_records));
                            move_cooldown[AT_NSPECIAL] = 60;
                        }
                    break;
                }

            break;
            case AT_FSPECIAL_2:
                if window == 2 and window_timer == 0 and !hitpause {
                    create_hitbox(attack, blook_record+1, x,y)
                }
                
                if window == 3 and window_timer > 3 and !hitpause {
                    hsp *= 0.94
                }
            break;
            case AT_FSPECIAL:
                switch window
                {
                    case 1:
                        hsp *= 0.9;
                        vsp *= 0.9
                        break;
                    case 2: 
                        if window_timer == 0
                        {
                            hsp = 16 * spr_dir
                            
                            if free vsp = -3
                            fspecial_used = true
                            move_cooldown[AT_FSPECIAL] = 40;
                        }
                        break;
                    case 3:
                        if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH) - 1 {
                            //set_state(free ? PS_PRATFALL : PS_IDLE)
                        }
                }
            break;
            case AT_UAIR:
                if window == 2 and window_timer mod 3 == 0 and !hitpause {
                    create_hitbox(attack, 1, x,y)
                }
                if window == 5 {
                    if window_timer == 0
                    {
                        vsp = 8
                        hsp = -4*spr_dir
                    }
                    else {
                        vsp = max(vsp - (0.8 + min(window_timer / 20, 0.5) ), clamp( (-6) + uair_times, -6, -3) );
                    }
                    
                    if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 {
                        uair_times += 1;
                    }
                }
            break;
            case AT_USTRONG:
                if window == 3 and window_timer == 0 {
                    sound_play(sound_get("sfx_ghost_appear"));
                }
                if (window == 4 and (window_timer == 4 or window_timer == 6) and has_hit_player and !hitpause) {
                    var i = 0;
                    repeat (4 + random_func(5, 5, true))
                    {
                        var x_speed = 3 - random_func(i + (abs(x) mod 10), 6, false);
                        var y_speed = -9 + random_func(i + (abs(y) mod 10), 4, false);
                        create_particle(x - 40, y-4, x_speed, y_speed, i mod 10, sprite_get(`confetti${(i mod 3) +1}`));
                        create_particle(x + 40, y-4, x_speed, y_speed, (i + 5) mod 10, sprite_get(`confetti${(i mod 3) +1}`));
                        i++;
                    }
                }
            break;
        }
    break;
    
}

// with (oPlayer) {
//     var arr = array_find_index(other.ftilt_grabbed, id);
//     if arr == -1 continue;
    
//     if hitstun == 0 other.ftilt_grabbed[arr] = noone
// }

update_particles();

//print(blook_record)
#define create_particle
/// create_particle(_x, _y, _hsp, _vsp, _seed, _sprite)
var _x = argument0, _y = argument1, _hsp = argument2, _vsp = argument3, _seed = argument4, _sprite = argument5;

var color_selection = [$ff9937, $e168ff, $285bec, $c2ff2f, $ff063f];

var particle = {
    x_pos : _x,
    y_pos : _y,
    hsp : _hsp,
    hsp_decay : -0.03,
    vsp :_vsp,
    max_vsp : 4,
    grav : 0.3,
    sprite : _sprite,
    frame : 0,
    angle : random_func( _seed + (abs(y+3) mod 5), 360, true),
    torque : 2 - random_func( _seed + (abs(x+3) mod 10), 4, false),
    anim_speed : random_func( _seed, 10, false) / 10,
    lifetime : 40 + random_func( _seed + 1, 20, true),
    alpha : 1,
    alpha_decay : 0.01,
    lifetime_timer : 0,
    color : color_selection[ random_func( _seed + (abs(x+y+1) mod 10), array_length(color_selection), true) ]
}

ds_list_add(particles, particle);


#define update_particles
//if hitpause return;

var i = 0;
while (i < ds_list_size(particles))
{
    particles[| i].vsp += particles[| i].grav;
    particles[| i].vsp = min(particles[| i].max_vsp, particles[| i].vsp);
    particles[| i].hsp = max((abs(particles[| i].hsp) + particles[| i].hsp_decay), 0)*sign(particles[| i].hsp);
    particles[| i].alpha -= particles[| i].alpha_decay;
    
    particles[| i].x_pos += particles[| i].hsp;
    particles[| i].y_pos += particles[| i].vsp;
    particles[| i].frame += particles[| i].anim_speed;
    
    particles[| i].angle = (particles[| i].angle + particles[| i].torque) mod 360;
    particles[| i].lifetime_timer++;
    if (particles[| i].alpha <= 0) or (particles[| i].lifetime_timer >= particles[| i].lifetime - 1)
    {
        ds_list_delete(particles, i);
    }
    
    i++;
}