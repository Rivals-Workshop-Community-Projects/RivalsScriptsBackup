#macro NOTE_NONE -1
#macro NOTE_WEAK 0
#macro NOTE_MED 1
#macro NOTE_STRONG 2
#macro NOTE_SYNC -2

// with (pHitBox) {
//     if player_id == other {
//         can_hit_self = true;
//     }
// }

if notes[0] == -1 {
    last_note = NOTE_NONE;
}

with (hit_fx_obj)
{
    if (sprite_index == sprite_get("hfx_generic") or sprite_index == sprite_get("hfx_strong") or sprite_index == sprite_get("note_trail") or sprite_index == sprite_get("note_trail_orange") or sprite_index == sprite_get("note_trail_purple")) and "flipped" not in self and spr_dir == -1
    {
        flipped = 1;
        spr_dir = 1;
    }
    
    if (sprite_index == sprite_get("note_trail") or sprite_index == sprite_get("note_trail_orange") or sprite_index == sprite_get("note_trail_purple")) {
        hsp *= 0.88
        vsp *= 0.88
    }

}

with (hit_fx_obj)
{
    if player_id == other {
        if hit_fx == other.note_hfx || hit_fx == other.note_strong_hfx {
            depth = player_id.depth+1;
        }
    }
}

//print(state_timer mod (image_number * (1/idle_anim_speed)))

sfx_cooldown = max(0, sfx_cooldown-1)


if instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect and sfx_cooldown == 0 and (attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG) {
    sfx_cooldown = 80;
    
    var addon = "_nobass"
    
    if attack != AT_FSTRONG {
        addon = ""
    }
    sound_play(sound_get("sfx_dstrong_hit"+addon)) 
}


if (state_timer mod floor(image_number * (1/idle_anim_speed)) == 36 && state == PS_IDLE && up_down) {
    sound_play(sound_get("sfx_idle_shake"), false, noone, 0.14, 1.05)
}


if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
    switch (attack)
    {
        case AT_EXTRA_1:
            if window == 3 and window_timer mod 5 == 0 {
                sound_play(sound_get("sfx_idle_shake"), false, noone, 0.8, 1.02)
            }
        break;
        case AT_USPECIAL:
            switch (window) {
                case 2:
                if window_timer == 0 and !hitpause {
                    vsp = fspecial_distance;
                    spawn_hit_fx(x,y,fspecial_vfx)
                }
                break;
            }        
        break;
        case AT_FSPECIAL:
        // with (pHitBox) {
        //     if (player_id != self or attack != other.attack) continue;
            
        //     if (point_distance(0,0,other.hsp,other.vsp) > 1) {
        //         with other print("lol")
        //         kb_angle = point_direction(0,0,other.hsp,other.vsp) + (180*(other.spr_dir == -1))
        //     }
            
        // }
            switch (window) {
                case 2:
                if window_timer == 0 and !hitpause {
                    hsp = fspecial_distance * spr_dir;
                }
                break;
            }
        break;
        case AT_DATTACK:
        switch window {
            case 2:
            if !hitpause and window_timer == 0 and last_note != -1
            {
                dattack_vfx_obj = spawn_hit_fx(x+hsp,y,dattack_vfx[last_note]);
                sound_play(asset_get("sfx_ori_spirit_flame_2"), false, noone, 1, 1)
                dattack_vfx_obj.depth = depth - 2
            }            
            case 3:
            if get_gameplay_time() mod 3 == 0 {
                var vfx = -1;
                switch last_note {
                    case 0:
                    vfx = note_trail_purple
                    break;
                    case 1:
                    vfx = note_trail
                    break;
                    case 2:
                    vfx = note_trail_orange
                    break;
                }
                
                if vfx == -1 break;
                
                var yy;
                yy = random_func(4, 40, false)-20
                spawn_hit_fx(x,y-30+yy,vfx)
            }
            break;
        }
        
        if instance_exists(dattack_vfx_obj) {
            dattack_vfx_obj.x = x + hsp;
            dattack_vfx_obj.y = y + vsp;
        }
        break;
        case AT_FSTRONG:
            switch window {
                case 6:
                    if window_timer == 0 and !hitpause {
                        create_hitbox(attack, 1, x, y);
                    }
                break;
            }
        break;
        case AT_NSPECIAL:
            switch window {
                case 2:
                    if window_timer == 0 {
                        note_pointer_display_timer = 0;
                        if notes[0] == -1 {
                            window = 3;
                            window_timer = 0;
                            break;
                        }
                        

                        
                        if note_pointer == -1 and notes[0] != -1 {
                            note_pointer = get_num_notes()-1;
                        }
                        else {
                            if pointer_should_stay
                            {
                                pointer_should_stay = false
                            }
                            else {
                                note_pointer--;
                            }
                            
                            if note_pointer == -1 {
                                note_pointer = get_num_notes()-1;
                            }
                        }
                        
                        if note_pointer != -1 {
                            sound_play(sound_get("sfx_nspecial_note_" + string(3-note_pointer) ))
                        }
                    }
                    
                    if is_special_pressed(DIR_ANY) {
                        window_timer = 0;
                        window++;
                        
                        popped_note = pop_note(note_pointer);
                        note_pointer = -1
                        
                        if (right_down - left_down == -spr_dir)
                        {
                            spr_dir *= -1;
                        }
                    }
                    else if shield_down {
                        window = 6
                        window_timer = 0;
                        parry_cooldown = 20
                        sound_play(sound_get("sfx_idle_shake"), false, noone, 0.8, 1.1)
                        pointer_should_stay = true;
                    }
                    
                    note_pointer_display_timer++;
                break;
                case 4:
                    if window_timer == 1 and !hitpause and popped_note != -1 {
                        var projectile = instance_create(x + (nspecial_framedata[popped_note].spawn_pos[0]*spr_dir), y+nspecial_framedata[popped_note].spawn_pos[1], "obj_article3")
                        
                        projectile.spr_dir = spr_dir;
                        projectile.sprite_index = nspecial_framedata[popped_note].sprite;
                        projectile.lengths = nspecial_framedata[popped_note].lengths;
                        projectile.anim_frames = nspecial_framedata[popped_note].anim_frames;
                        projectile.projectile_number = popped_note;
                        projectile.loop = nspecial_framedata[popped_note].loop;
                        projectile.depth = depth - 2
                    }
                    
                    move_cooldown[AT_NSPECIAL] = 60
                break;
                case 6:
                    note_pointer_display_timer = min(20, note_pointer_display_timer+1);
                break;
            }
        break;
    }
}
else if note_pointer_display_timer != 20 {
    note_pointer_display_timer++;
}


if state == PS_ATTACK_AIR and !hitpause and attack == AT_NAIR and window == 2 and window_timer mod 3 == 0 {
    create_hitbox(attack,1,x,y);
}

if instance_exists(tambo_obj)
{
    move_cooldown[AT_DSPECIAL] = 2;
}

if state == PS_AIR_DODGE and window < 2 {
    if get_gameplay_time() mod 3 == 0
    {
        spawn_colored_notes()
    }
}

//rainbow alt code (thanks mallow)

//Rainbow

if (get_player_color(player) == 23){
    //Run once
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    //Run for each color slot you're changing. If you're using different hues (EG Liz shading), make sure they're actually different - The colors still use the original colors saturation/value.
    rainbow_alt();

    set_color_profile_slot( 23, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.

    //Repeat for each color slot.
    rainbow_alt();
    
    set_color_profile_slot( 23, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    
    //tambo
    rainbow_alt();
    
    set_article_color_slot( 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    
    //vfx
    rainbow_alt();
    
    set_article_color_slot( 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    
    init_shader();
}

#define spawn_colored_notes()
var yy;
yy = random_func(4, 40, false)-20
var vfx = -1;
switch random_func( (x+y) mod 8, 3, true ) {
    case 0:
    vfx = note_trail_purple
    break;
    case 1:
    vfx = note_trail
    break;
    case 2:
    vfx = note_trail_orange
    break;
}
spawn_hit_fx(x,y-20+yy,vfx)

#define random_range()
/// random_range(minimum, maximum)
var minimum = argument0, maximum = argument1;

var key = floor( abs(x - y + hsp - vsp) mod 10 );  

var range = (maximum - minimum)*100

return  (random_func(key, range, false)/100) + minimum

#define pop_note
/// pop_note(ele)
var ele = argument0;

var val = notes[ele]
notes[ele] = -1;

var j = ele

while j != array_length(notes) - 1 and notes[j+1] != -1 {
    var p = notes[j];
    notes[j] = notes[j+1];
    notes[j+1] = p;
    
    j++;
}

return val;
#define get_num_notes
var i = 0
while i != array_length(notes) and notes[i] != -1 {
    i++;
}

return i
#define rainbow_alt()

color_rgb = make_color_rgb (48, 147, 230 );
hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue