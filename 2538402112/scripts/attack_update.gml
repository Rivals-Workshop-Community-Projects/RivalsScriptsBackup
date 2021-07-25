// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack)
{
    case AT_JAB:
        if (window == 4 && window_timer == 1)
            hsp += (2*spr_dir);
        else if (window == 7 && window_timer == 1)
            hsp += (6*spr_dir);
        break;
    case AT_DATTACK:
        can_move = false
        can_fast_fall = false
        set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
        set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1)
        
        if (window == 1){
            if window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH)-1{
                set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
                set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
            }
            else if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) spawn_base_dust(x,y, "jump")
        }
        
        if window >= 3 set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
        
        if (window == 3 && !free){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
            spawn_hit_fx( x+(30*spr_dir), y, 193 );
            spawn_base_dust(x+(30*spr_dir),y, "land");
        }
        break;
    case AT_USTRONG:
        if (window == 3 || window == 4 || window == 5){
            go_through = true
        }
        break;
    case AT_NSPECIAL:
        if free{
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 18);
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -22);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 13);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 8);
            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 15);
        }
        else{
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
        }
        break;
    case AT_EXTRA_1:
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if !has_rune("M"){
                grov_current_nspecial = 0;
                move_cooldown[AT_NSPECIAL] = 60;
            }
            var boom = instance_create(x+(25*spr_dir),y-39,"obj_article2")
            boom.effect_num = 1
            boom.sprite_index = sprite_get("blastseed_explosion");
        }
        break;
    case AT_FSPECIAL:
        can_move = false
        if (window == 1 && window_timer == 1){
            grov_fspecial_cooldown = 70;
        }
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if spr_dir == 1 grov_wandangle = 0;
            else grov_wandangle = 180;
        }
        
        if window = 3{
            if !joy_pad_idle{
                if up_down{
                    if (grov_wandangle < 90 || grov_wandangle > 270){
                        grov_wandangle += 4.5;
                        grov_wandangle = min(grov_wandangle,60)
                    }
                    if (grov_wandangle > 90 && grov_wandangle < 270){
                        grov_wandangle -= 4.5;
                        grov_wandangle = max(grov_wandangle,120)
                    }
                }
                else if down_down{
                    if (grov_wandangle < 90 || grov_wandangle > 270){
                        grov_wandangle -= 4.5;
                        grov_wandangle = max(grov_wandangle,-60)
                    }
                    if (grov_wandangle > 90 && grov_wandangle < 270){
                        grov_wandangle += 4.5;
                        grov_wandangle = min(grov_wandangle,230)
                    }
                }
            }
        }
        if window = 4{
            can_fast_fall = false
            can_move = false
            set_attack_value(AT_FSPECIAL,AG_OFF_LEDGE,1)
            var pounce_speed = 20;
            var pounce_dir = point_direction(x, y, grov_pouncex, grov_pouncey);
            hsp = lengthdir_x(pounce_speed,pounce_dir);
            vsp = lengthdir_y(pounce_speed,pounce_dir);
            if (point_distance(x, y, grov_pouncex, grov_pouncey) < 96) || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
                if !free{
                    set_state(PS_IDLE);
                    hsp = 5*spr_dir;
                }
                else{
                    set_state(PS_IDLE_AIR);
                    hsp = 4*spr_dir;
                }
                if vsp > 0{
                    if grov_pounce_foe vsp = -2;
                    else vsp = 0;
                }
                else vsp = max(-4, vsp)
            }
        }
        else set_attack_value(AT_FSPECIAL,AG_OFF_LEDGE,0)
        break;
    case AT_USPECIAL:
        // if window == 1 can_move = false
        can_fast_fall = false
        if (window == 2 && window_timer == 1) move_cooldown[AT_USPECIAL] = 9999;
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            if down_down set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
            else if up_down set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);
        }
        if window == 3 can_wall_jump = true
        break;
    case AT_DSPECIAL:
        can_move = false
        can_fast_fall = false
        fall_through = true
        
        if (window == 1 && window_timer == 1){
            if !free && ground_type == 2 free = true
        }
        
        if window == 2{
            can_move = true
            can_wall_jump = true
            if window_timer == 1 && grov_dspecial_loops == 0 && hitpause == false{
                sound_play(asset_get("sfx_spin_longer"))
                sound_play(asset_get("sfx_spin"))
            }
            if !free downb_article_check()
        }
        else grov_dspecial_loops = 0    
        
        if (window == 3 && window_timer == 0) destroy_hitboxes();
        
        if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
            grov_digdir = 0
            if left_down{
                grov_digdir = -1
            }
            else if right_down{
                grov_digdir = 1
            }
            if up_down grov_digdir *= 2
            if grov_digdir != 0 spr_dir = sign(grov_digdir)
        }
        
        if (window == 5){
            if hitpause == false{
                can_wall_jump = true
                // spr_dir = grov_digdir
                if grov_digdir == 1 || grov_digdir == -1{
                    hsp = 8.5 * spr_dir;
                    vsp = -5.5;
                }
                else{
                    hsp = 5.5 * spr_dir;
                    vsp = -9;
                }
                move_cooldown[AT_DSPECIAL] = 9999;
            }
        }
        
        if (window == 6 && window_timer > 5){
            can_move = true
            if !free downb_article_check()
        }
        
        //RUNES
        
        if has_rune("J"){
            if window == 1 || window == 3 || window == 6 invincible = true
        }
        
        //End of window code
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            switch(window)
            {
                case 1:
                    if !free downb_article_check()
                    else{
                        window = 2;
                        window_timer = 0;
                    }
                    break;
                    
                case 2:
                    grov_dspecial_loops++
                    if grov_dspecial_loops < 4 window_timer = 0;
                    break;
                    
                case 3:
                    window++;
                    window_timer = 0;
                    break;
                    
                case 4:
                    window++;
                    window_timer = 0;
                    instance_create(x,y,"obj_article2")
                    break;
                
                case 5:
                    window = 8;
                    window_timer = 0;
                    break;
                    
                case 6:
                    window = 2;
                    window_timer = 0;
                    break;
            }
        }
        break;
    case AT_TAUNT:
        if (window == 4 && !taunt_down){
            window_timer = 0
            window = 3
        }
        //End of window code
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if has_rune("O") move_cooldown[AT_TAUNT] = 30
            switch(window)
            {
                case 2:
                    if taunt_down && !has_rune("O"){
                        window_timer = 0
                        window = 4
                    }
                    break;
                case 4:
                    window_timer = 0
                    break;
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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
window = 3
window_timer = 0

with asset_get("obj_article_solid"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}
with asset_get("pillar_obj"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}
with asset_get("rock_obj"){
    if collision_line(other.x-19,other.y+1,other.x+18,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}
