// spiny update
state_timer += 1;
hitstop = max(hitstop, 0);
is_hittable = true;
depth = -2;

if x != clamp(x, blast_l, blast_r) || y > blast_b {
    instance_destroy();
    exit;
}

// ===== PHYSICS =====
// gravity
if free {
    vsp += gravity_speed;
    if state != PS_HITSTUN { vsp = min(vsp, max_fall); }
}

// friction
if queued_state == PS_HITSTUN {
    hsp = (free) ? hsp * 0.985 : sign(hsp) * max(abs(hsp) - ground_friction, 0);
}
else { hsp *= 0.98; }


// ===== STATES =====
// landing
if !free && was_free && state == PS_WALK {
    queued_state = PS_LAND;
}

// set new state
if state != queued_state {
    state = queued_state;
    state_timer = 0;
}

// state logic
switch state {
    case PS_SPAWN:
        depth = 0;
        is_hittable = false;
        vsp = 0;
        hsp = walk_speed * spr_dir;
        if state_timer >= 30 { queued_state = PS_WALK; }
        break;
    
    case PS_WALK:
        if !free {
            sprite_index = spr_walk;
            if state_timer == 0 { image_index = 0; }
            else { image_index += walk_anim_speed; }
            hsp = walk_speed * spr_dir;
            if state_timer % 12 == 0 { spawn_base_dust(x, y, "walk"); }
            
            // collision checks to turn around
            var s = (spr_dir == 1) ? bbox_right + 1 : bbox_left - 1;
            var sol = asset_get("par_block");
            if collision_line(s, bbox_bottom - 1, s, bbox_top + 1, sol, true, false) {
                queued_state = PS_WALK_TURN;
            }
        }
        else {
            sprite_index = spr_fall;
        }
        break;
    
    case PS_WALK_TURN:
        if state_timer == 0 {
            spr_dir *= -1;
            sprite_index = sprite_get("spiny_turn");
            image_index = 0;
        }
        else if state_timer >= walk_turn_time { queued_state = PS_WALK; }
        hsp = -walk_speed + walk_accel * (state_timer + 1) / walk_turn_time;
        break;
    
    case PS_HITSTUN:
        if hitstop { 
            sprite_index = sprite_get("spiny_hurt");
            state_timer = -1;
        }
        else {
            if state_timer == 0 {
                sprite_index = sprite_get("spiny_hurt");
                hsp = old_hsp;
                vsp = old_vsp;
            }
            
            // manage hitstun
            hitstun -= 1;
            if hitstun <= 0 { queued_state = PS_WALK; }
            
            if (hitstun_full - hitstun) {
                // dust trail fx
                if free && (hitstun_full - hitstun) % 7 == 0 {
                    spawn_base_dust(x, y - 20, "hitstun", spr_dir);
                }
                
                // bounce off ground
                if !free && was_free && vsp_prev > 3 {
                    vsp = -0.7 * vsp_prev;
                    sound_play(asset_get("sfx_bounce"), false, noone, 0.75);
                    if was_free { spawn_bounce_fx(x, y, 0); }
                }
                // bounce off wall
                if hit_wall {
                    hsp = -0.8 * hsp_prev;
                    if hsp > 0 { spawn_bounce_fx(bbox_left - 2, (bbox_bottom + bbox_top)/2, 270); }
                    else if hsp < 0 { spawn_bounce_fx(bbox_right + 2, (bbox_bottom + bbox_top)/2, 90); }
                    sound_play(asset_get("sfx_bounce"), false, noone, 0.75);
                }
                // bounce off ceiling
                if vsp == 0 && vsp_prev < -3 {
                    vsp = -0.5 * vsp_prev;
                    sound_play(asset_get("sfx_bounce"));
                    spawn_bounce_fx(x, bbox_top, 180);
                }
            }
        }
        break;
    
    case PS_BURIED:
        if state_timer == 0 {
            sprite_index = sprite_get("spiny_squish");
            image_index = 0;
            vsp = 0;
            hsp = 0;
            is_hittable = false;
            sound_play(sound_get("stomp"));
        }
        else if state_timer < 16 {
            image_index = image_number * state_timer / 16;
            is_hittable = (image_index < 2);
        }
        else if state_timer < 180 {
            sprite_index = sprite_get("spiny_shell");
            image_index = 0;
        }
        else {
            sprite_index = sprite_get("spiny_shellrock")
            image_index += min((state_timer - 180)/20, 0.3);
        }
        
        if state_timer >= 240 && !free { queued_state = PS_FIRST_JUMP; }
        break;
    
    case PS_DASH:
        if state_timer == 0 {
            sprite_index = sprite_get("spiny_shell");
            image_index = 0;
        }
        image_index += walk_anim_speed;
        hsp = dash_speed * spr_dir;
        create_ouchbox(2, 2);
        ouchbox.can_hit[last_hit_player] = 0;
        
        // collision checks to turn around
        var s = (spr_dir == 1) ? bbox_right + 1 : bbox_left - 1;
        var sol = asset_get("par_block");
        if collision_line(s, bbox_bottom - 1, s, bbox_top + 1, sol, true, false) {
            state = PS_FROZEN; // dummy state
            queued_state = PS_DASH;
            last_hit_player = 0;
            spr_dir *= -1;
            sound_play(sound_get("block_bump"));
        }
        
        break;
    
    case PS_FIRST_JUMP:
        if state_timer == 0 {
            sprite_index = spr_fall;
            image_index = 0;
            vsp = -jump_speed;
            hsp = 0;
            spawn_base_dust(x, y, "jump");
            sound_play(sound_get("jump"));
        }
        else if vsp >= 0 { queued_state = PS_WALK; }
        break;
    
    case PS_LAND:
        if state_timer == 0 {
            sprite_index = sprite_get("spiny_land");
            spawn_base_dust(x, y, "land");
            sound_play(asset_get("sfx_land_light"));
        }
        else if state_timer >= land_time { queued_state = PS_WALK; }
        image_index = image_number * state_timer / (land_time + 1);
        break;
    
    case PS_DEAD:
        if state_timer == 0 {
            sprite_index = sprite_get("spiny_dead");
            mask_index = asset_get("empty_sprite");
            vsp = -8;
            spr_dir = (random_func(0, 2, true)) ? 1 : -1;
            sound_play(sound_get("die"))
        }
        image_index = 1;
        image_angle += 10 * spr_dir;
        is_hittable = false;
        break;
}

// ouchbox
switch state {
    case PS_WALK: case PS_WALK_TURN: case PS_LAND: case PS_HITSTUN: case PS_BURIED:
        var x1 = bbox_left + 8;
        var y1 = bbox_top + 8;
        var x2 = bbox_right - 8;
        var y2 = bbox_bottom - 8;
        
        with oPlayer {
            if point_distance(x, y, other.x, other.y) < 150 {
                if collision_rectangle(x1, y1, x2, y2, hurtboxID, true, false) {
                    with other {
                        create_ouchbox(3, 1);
                    }
                    break;
                }
            }
        }
        break;
}


// ===== MISC. =====
// store old values
hsp_prev = hsp;
vsp_prev = vsp;
was_free = free;


#define create_ouchbox
/// create_ouchbox(attack, hbox_num)
var attack = argument0, hbox_num = argument1;
destroy_ouchbox();
if getting_bashed { return; }
ouchbox = create_hitbox(attack, hbox_num, x, y);
ouchbox.owner = self;
if state == PS_HITSTUN {
    ouchbox.can_hit[last_hit_player] = 0;
}

#define destroy_ouchbox
if instance_exists(ouchbox) { instance_destroy(ouchbox); }

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
//- "has some extra dust fx not normally included" - nart
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    // extra dust fx
    case "hitstun": dlen = 12; dfx = 13; dfg = 2683; dust_color = 0; dfa = 270; break;
    //case "bounce_bg": dlen = 11; dfx = 7; dfg = 0; dust_color = 0; break;
    //case "bounce_fg": dlen = 16; dfx = 8; dfg = 0; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite -- "i think fg_sprite is no longer used" - nart
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define spawn_bounce_fx
/// spawn_bounce_fx(x, y, angle = 0)
var x = argument[0], y = argument[1];
var angle = argument_count > 2 ? argument[2] : 0;

var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),11);
newdust.dust_fx = 7;
newdust.dust_color = 0;
newdust.spr_dir = spr_dir;
newdust.draw_angle = angle;

var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),16);
newdust.dust_fx = 8;
newdust.dust_color = 1;
newdust.spr_dir = spr_dir;
newdust.draw_angle = angle;
