//attack_update

//B-Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack)
{
    case AT_JAB:
        if (window == 4 && window_timer == 1 && !hitpause)       hsp += (0*spr_dir);
        else if (window == 7 && window_timer == 1 && !hitpause)  hsp += (6*spr_dir);
        break;
    case AT_DATTACK:
        can_move = false;
        can_fast_fall = false;
        if (window == 1){
            if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause{
                spawn_base_dust(x, y, "jump")
                set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
            }
            else reset_attack_value(AT_DATTACK, AG_CATEGORY);
        }
        if (window == 3 && !free && !hitpause){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
            spawn_hit_fx(x+(30*spr_dir), y, 193);
            spawn_base_dust(x+(30*spr_dir), y, "land");
        }
        if window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
            window = 5;
            window_timer = 0;
        }
        break;
    case AT_FSTRONG:
        if window == 2 && window_timer == 5 && !hitpause sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 1.4, 1.1);
        break;
    case AT_USTRONG:
        if (window == 3 || window == 4 || window == 5) go_through = true;
        break;
    case AT_NSPECIAL:
        can_fast_fall = false;
        if window == 1 hud_offset = ((18 * min(2,window_timer)));
        else if window == 2{
            hud_offset = 36;
            can_wall_jump = true;
            can_jump = true;
            can_shield = true;
            var horiz = (right_down || right_stick_down) - (left_down || left_stick_down)
            if horiz != 0{
                if horiz == spr_dir select_nspecial(AT_FTHROW);
                else                select_nspecial(AT_NTHROW);
            }
            else if up_down || up_stick_down select_nspecial(AT_UTHROW);
            else if down_down || down_stick_down select_nspecial(AT_DTHROW);
            else if !special_down{
                window = 3;
                window_timer = 0;
            }
        }
        break;
    case AT_FTHROW:
        if free{
            set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 18);
            set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -22);
            set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 13);
            set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 7.5);
            if (window == 2 && window_timer == 1 && !hitpause) vsp -= 1;
            if has_rune("M"){
                set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 19);
                set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 11);
            }
        }
        else{
            reset_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X);
            reset_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y);
            reset_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED);
        }
        break;
    case AT_NTHROW:
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
            var boom = instance_create(x+(25*spr_dir),y-39,"obj_article2");
            boom.effect_num = 1;
            boom.sprite_index = sprite_get("blastseed_explosion");
            if !has_rune("O") move_cooldown[AT_NTHROW] = 300;
            if vsp > 0 vsp = 0;
            if has_rune("M"){
                boom.x = x+(35*spr_dir);
                boom.boom_xoff = 35;
                boom.image_xscale = 3;
                boom.image_yscale = 3;
            }
        }
        break;
    case AT_UTHROW:
        if has_rune("M") && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause{
            var test = create_hitbox(attack,1,x+(20*spr_dir),y-44);
            test.hsp = 1.5*spr_dir;
            test.vsp = -8.25;
            test = create_hitbox(attack,1,x+(20*spr_dir),y-44);
            test.hsp = 5*spr_dir;
            test.vsp = -5;
        }
        break;
    case AT_FSPECIAL:
        can_move = false;
        grov_fspecial_cooldown = 20;
        if window == 1{
            grav = 0;
            hsp = lerp(hsp,0,0.4);
            vsp = lerp(vsp,0,0.4);
            if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
                if spr_dir == 1 grov_wandangle = 0;
                else grov_wandangle = 180;
            }
        }
        if window = 3{
            if !joy_pad_idle{
                var max_wand_angle = 90;
                var angle_change = 10;
                var forward = spr_dir == 1 ? 0:180;
                var new_angle = joy_dir;
                if new_angle <= 20 || new_angle >= 340  new_angle = 0; //Hold right
                if abs(new_angle - 180) <= 20           new_angle = 180; //Hold right
                var angle_dif = angle_difference(grov_wandangle,new_angle);
                if angle_dif == -180 angle_dif = 180 * spr_dir; //Holding opposite direction.
                grov_wandangle -= min(abs(angle_dif),angle_change) * sign(angle_dif);
                grov_wandangle = clamp(grov_wandangle, forward-max_wand_angle, forward+max_wand_angle);
            }
        }
        if window = 4{
            can_fast_fall = false;
            can_move = false;
            can_wall_jump = true;
            set_attack_value(AT_FSPECIAL,AG_OFF_LEDGE,1);
            
            fall_through = true;
            
            if grov_pounce_foe_id != null{
                grov_pouncex = grov_pounce_foe_id.x;
                grov_pouncey = grov_pounce_foe_id.y;
                if grov_pounce_foe_id.free grov_pouncey -= 32;
            }
            
            var pounce_speed = 20;
            var pounce_dir = point_direction(x, y, grov_pouncex, grov_pouncey);
            hsp = lengthdir_x(pounce_speed,pounce_dir);
            vsp = lengthdir_y(pounce_speed,pounce_dir);
            
            if (point_distance(x, y, grov_pouncex, grov_pouncey) < 96) || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
                spr_angle = 0;
                grov_pounce_foe_id = null;
                if !free{
                    set_state(PS_IDLE);
                    hsp = 6*spr_dir;
                }
                else{
                    set_state(PS_IDLE_AIR);
                    if grov_pounce_foe hsp = 5 *spr_dir;
                    else hsp = 6.5*spr_dir;
                }
                
                if grov_pounce_foe{
                    if free{
                        if vsp < 0  vsp = -5;
                        else        vsp = -3;
                        djumps = 0;
                    }
                    else vsp = 0;
                }
                else if vsp > 0 vsp = 0;
                else vsp = max(-4, vsp);
            }
        }
        else set_attack_value(AT_FSPECIAL,AG_OFF_LEDGE,0);
        break;
    case AT_USPECIAL:
        move_cooldown[AT_USPECIAL] = 9999;
        can_fast_fall = false;
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            if down_down    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
            else if up_down set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);
        }
        if window == 3 can_wall_jump = true;
        break;
    case AT_DSPECIAL:
        can_move = false;
        can_fast_fall = false;
        fall_through = true;
        switch(window){
            case 1://Start Ground
                grov_dspecial_loops = 0;
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
                    if ground_type == 2 free = true;
                    if !free downb_article_check();
                    else{
                        window = 7;
                        window_timer = 0;
                    }
                }
                break;
            case 2://Dig into Ground
                if free set_state(PS_IDLE_AIR);
                if window_timer == 0 destroy_hitboxes();
                break;
            case 3://Ground Wait
                if free set_state(PS_IDLE_AIR);
                else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
                    grov_digdir = 0;
                    if left_down        grov_digdir = -1;
                    else if right_down  grov_digdir = 1;
                    if up_down          grov_digdir *= 2;
                    if grov_digdir != 0 spr_dir = sign(grov_digdir);
                    instance_create(x,y,"obj_article2");
                }
                break;
            case 4://Kick
                if !hitpause{
                    if grov_digdir == 1 || grov_digdir == -1{
                        if !was_parried hsp = 8.5 * spr_dir;
                        vsp = -5.5;
                    }
                    else{
                        if !was_parried hsp = 5.5 * spr_dir;
                        vsp = -9;
                    }
                    move_cooldown[AT_DSPECIAL] = 9999;
                }
                break;
            case 5://Kick Endlag
                fall_through = false;
                if !free{
                    if !was_parried set_state(PS_LAND);
                    else            set_state(PS_PRATLAND);
                }
                break;
            case 6://Start Air
                grov_dspecial_loops = 0;
                if window_timer > 5{
                    can_move = true;
                    if !free downb_article_check();
                }
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
                    window = 7;
                    window_timer = 0;
                }
                break;
            case 7://Air Drill
                can_move = true;
                can_wall_jump = true;
                if window_timer == 1 && grov_dspecial_loops == 0 && !hitpause{
                    sound_play(asset_get("sfx_spin_longer"));
                    sound_play(asset_get("sfx_spin"));
                }
                if !free downb_article_check();
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
                    grov_dspecial_loops++;
                    if grov_dspecial_loops < 4 window_timer = 0;
                }
                break;
        }
        break;
    case AT_TAUNT:
        if window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down{
            window = 4;
            window_timer = 0;
        }
        else if window == 4{
            if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) window_timer = 0;
            if !taunt_down{
                window = 3;
                window_timer = 0;
            }
        }
        break;
}

//Thanks
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define downb_article_check
window = 2;
window_timer = 0;

with asset_get("obj_article_solid"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone  other.window = 8;
}
with asset_get("pillar_obj"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone  other.window = 8;
}
with asset_get("rock_obj"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone  other.window = 8;
}

#define select_nspecial(sel_nspecial)
if move_cooldown[sel_nspecial] == 0{
    set_attack(sel_nspecial);
    hurtboxID.sprite_index = get_attack_value(sel_nspecial, AG_HURTBOX_SPRITE);
}
else{
    sound_play(sound_get("Menu_Back"));
    window = 3;
    window_timer = 0;
}