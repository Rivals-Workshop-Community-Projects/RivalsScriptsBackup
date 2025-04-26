var cannon = player_id.cannon;

if (can_be_grounded){
ignores_walls = false;
} else ignores_walls = true;

if (state == 0){
    is_hittable = true;
    if (state_timer >= 20){
	can_be_grounded = true;
	if (!free){
	    state = 1;
	    state_timer = 0;
	    vsp *= -1;
	}
    }
    hbox = create_hitbox(AT_NSPECIAL, 1, x, y);
    hbox.x = x + hsp;
    hbox.y = y + vsp;
    hbox.spr_dir = spr_dir;
    hbox.player = owner;
        if (state_timer % 5 <= 1){
            spawn_base_dust(x - 6*spr_dir, y + 8, "walk");
        }
    if state_timer >= active_time{
        state = 1;
        state_timer = 0;
    }
    if (hit_wall){
        sound_play(asset_get("sfx_shovel_hit_light1"));
        state = 1;
        state_timer = 0;
        vsp = -6;
        hsp *= -0.5;
    }
} else is_hittable = false;
if (state == 1){
	can_be_grounded = true;
    hbox = create_hitbox(AT_NSPECIAL, 2, x, y);
    hbox.x = x + hsp;
    hbox.y = y + vsp;
    hbox.spr_dir = spr_dir;
    hbox.player = owner;
    if (vsp < max_fall_speed){
        vsp += grav;
    }
    if (vsp > max_fall_speed){
        vsp = max_fall_speed;
    }
    if (!free){
        if (!bounced){
        sound_play(asset_get("sfx_shovel_hit_med1"), false, noone, 0.7, 0.8);
        vsp = -3;
        bounced = true;
        }
        if (state_timer % 5 <= 1){
            spawn_base_dust(x - 6*spr_dir, y + 16, "walk");
        }
    }
    if (state_timer >= 90 && free || state_timer >= 30 && !free){
        should_die = true;
    }
}

if (collision_circle(x, y, 24, cannon, false, false) && state != 3 && !double_fired && cannon.state != 3){
    sound_play(sound_get("sfx_succ"));
    spawn_hit_fx(cannon.x, cannon.y, 302);
    state = 3;
    state_timer = 0;
    x = cannon.x;
    y = cannon.y - 24;
    cannon.cannonball_stuck = true;
    cannon.state = 3;
    cannon.state_timer = 0;
    cannon.cannon_index = 0;
    cannon.fired = false;
}

if (state == 3){
    can_be_grounded = false;
    hsp = 0;
    vsp = 0;
    image_alpha = 0;
}

if (!free && !was_free){
        was_free = true;
}

if (free && was_free){
    was_free = false;
}

if (x > room_width or x < 0 or y > room_height + 200){
	should_die = true;
}

state_timer ++;
exist_timer ++;
image_index += 0.2;

if (should_die){
    spawn_hit_fx(x, y, 14);
    player_id.cannonball_cooldown = 40 + stored_charge/2;
    instance_destroy();
    exit;
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}