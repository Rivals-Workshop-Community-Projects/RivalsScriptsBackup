// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
if coffee_boost && strong_charge && strong_charge < 60 strong_charge++;

switch attack{
    case AT_JAB:
    if window == 4{
        if !is_attack_pressed(DIR_NONE) can_attack = 1;
        if window_timer == 7 || window_timer == 15 || window_timer == 23 sound_play(asset_get("sfx_swipe_weak2"));
        if (window_timer == 6 || window_timer == 14 || window_timer == 22) && !attack_down{
            window = 5;
            window_timer = 0;
        }
    }
    if window == 5 && !is_attack_pressed(DIR_NONE) can_attack = 1;
    break;
    
    case AT_UTILT:
    offset_hud(100);
    if window == 4{
        can_jump = has_hit;
        if is_attack_pressed(DIR_ANY) && window_timer >= 6 - 3*(ego_boost>0){
            set_window(2);
            attack_end();
        }
    }
    break;
    
    case AT_DATTACK:
    if window == 1 && window_timer == window_end{
        sound_play(asset_get("sfx_absa_dattack"));
        var g = spawn_hit_fx(x, y, dattack_fx);
        g.follow_id = self;
        g.follow_time = null;
        g.depth = depth-1;
    }
    break;
    
    //strongs
    
    case AT_USTRONG:
    if window >= 2 offset_hud(400);
    if window == 2 && window_timer == window_end spawn_hit_fx(x, y - 120, 266);
    break;
    
    case AT_FSTRONG:
    set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 8 + 3*(ego_boost>0));
    set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_VSPEED, -4 - 2*(ego_boost>0));
    break;
    
    case AT_DSTRONG:
    if window == 2 && window_timer == window_end{
        var n = spawn_hit_fx(x, y, dstrong_fx);
        n.depth = depth;
    }
    break;
    
    //aerials
    
    case AT_NAIR:
    if window == 1 && window_timer == window_end{
        var g = spawn_hit_fx(x, y, nair_fx);
        g.depth = depth-1;
        g.follow_id = self;
        g.follow_time = null;
    }
    break;
    
    case AT_UAIR:
    offset_hud(160);
    break;
    
    case AT_DAIR:
    if window == 1 && window_timer == window_end{
        sound_play(asset_get("sfx_swipe_medium2"));
        var g = spawn_hit_fx(x, y, dair_fx);
        g.depth = depth-2;
        g.follow_id = self;
        g.follow_time = null;
    }
    break;
    
    //specials
    
    case AT_NSPECIAL:
    case AT_DSPECIAL_AIR:
    var atk = (attack == AT_NSPECIAL);
    if window == 1 && window_timer == window_end{
        if atk hsp += (free? -2: 4)*spr_dir;
        if stevepotion{
			with (steveid){
				object_type = (other.concoction_id < 7? 'splash_potion': "lingering_potion"); //or 'lingering_potion'
				object_params[@ 0] = (10 + 4*(other.ego_boost>0))*other.spr_dir*atk; //set to hsp
				object_params[@ 1] = 8 + 4*(other.ego_boost>0 && !atk) - 13*atk; //set to vsp
				
				object_params[@ 2] = other.steve_pots[other.concoction_id]; //set to the name of the potion effect
				object_params[@ 3] = other.steve_potlvl[other.concoction_id]; //set to the level (starts at 1)
				object_params[@ 4] = false; //set to if it's extended
				object_params[@ 5] = other.id; //set to your player id
				
				create_type = 'obj_article3';
				create_x = other.x + (4 + 16*atk)*other.spr_dir;
				create_y = other.y - 6 - 34*atk;
				user_event(11); //below is just forcing some stats
				create_result.hsp = (10 + 4*(other.ego_boost>0))*other.spr_dir*atk;
				create_result.vsp = 8 + 4*(other.ego_boost>0 && !atk) - 13*atk;
				create_result.grav = .5;
				
				//instance_create(other.x + (4 + 16*atk)*other.spr_dir, other.y - 6 - 34*atk, 'obj_article3'); //this spawns an article3 24 scaled pixels above steve's origin, which runs init and becomes a splash potion bottle.
				other.stevepotion = false
				other.concoction_id = 0
			}
        }else{
            var hb = create_hitbox(AT_NSPECIAL, 1, x + (4 + 16*atk)*spr_dir, y - 6 - 34*atk);
            hb.kill_me = array_find_index(throwable_index, stored_recipe);
            hb.hsp = (10 + 4*(ego_boost>0))*spr_dir*atk;
            hb.vsp = 8 + 4*(ego_boost>0 && !atk) - 13*atk;
        }
        stored_recipe = "000"
        concoction_id = 0;
    }
    if window == 4 && window_timer == window_end{
        sound_play(sound_get("powerup"));
        if stevepotion{
            var _spr_data = variable_instance_get( steveid.mc_assets_storage.ultiSteve_assets_cache.potion_data, steve_pots[concoction_id] );
            var _effect_data = variable_instance_get(steveid.potion_data,steve_pots[concoction_id]);
			steve_status_effect_color_reset = true;
            var _status = {
                type: steve_pots[concoction_id],
                level: steve_potlvl[concoction_id], //potion levels, starting with 1.
                duration: _effect_data.duration, //this is in ticks. 
                tick: 0, //this is like a reverse duration, ticking up
                steve: steveid, //refers to the original steve for particles and other code in specific cases
                color: _spr_data.color,
                particle: _spr_data.particle,
                grav: _spr_data.grav,
                vel_mult: _spr_data.vel_mult,
                custom_particle: _spr_data.custom_particle,
                hide: false,
                term_1: "X", //for the hud overlay
                term_2: "Y" //for the hud overlay
            };
            array_push(steve_status_effects,_status);
            steveid.shared_id.potion_update = true;
			stevepotion = false
			concoction_id = 0
        }else switch array_find_index(drinkable_index, stored_recipe){
            case 0: //Weed Infusion
            weed_boost = 1200 + 600*(ego_boost>0);
            break;
            case 1: //Grain Alcohol
            alcohol_boost = 600 + 600*(ego_boost>0);
            break;
            case 2: //Morphene
            morphene_boost = 600 + 600*(ego_boost>0);
            break;
            case 3: //Coffee
            coffee_boost = 900 + 600*(ego_boost>0);
            break;
        }
        stored_recipe = "000"
        concoction_id = 0;
    }
    if !free && attack == AT_DSPECIAL_AIR{
        attack_end();
        set_state(PS_LANDING_LAG);
    }
    move_cooldown[attack] = 20;
    break;
    
    case AT_DSPECIAL:
    switch window{
        case 1:
        if window_timer == window_end{
            if instance_exists(table){
                table.state = 3;
                table.timer = 0;
                table.depth++;
                table = noone;
            }
            var xp = 80;
            repeat xp{
                if ground_at_pos(x + xp*spr_dir, y) break;
                xp--;
            }
            table = instance_create(x + (xp - 20)*spr_dir, y, "obj_article1");
            table.spr_dir = spr_dir;
        }
        break;
        
        case 2:
        if window_timer >= 12 && special_down set_window(3);
        break;
        
        case 3:
        case 8:
        clear_button_buffer(PC_SPECIAL_PRESSED);
        clear_button_buffer(PC_ATTACK_PRESSED);
        reset_stick();
        if !steve_cooking if table.state != 2 && window_timer == 1{
            materials = [0, 0, 0];
            lab_ui_act = 0;
        }
        break;
        
        case 4:
        case 5:
        if !steve_cooking lab_ui_pos = [table.x, table.y];
        else lab_ui_pos = [x, y];
        offset_hud(120);
        cooking = 2;
        if (materials[0] + materials[1] + materials[2] == 3) || special_pressed{
            if !special_pressed{
                stored_recipe = string(materials[0]) + string(materials[1]) + string(materials[2]);
                flavour_text = 120;
                concoction_id = array_find_index(recipes_index, stored_recipe);
                concoction_name = [x - string_width(recipes_name[concoction_id])/2, y - char_height - 40, concoction_id, 80];
                sound_play(sound_get("bottles_clink_once"), 0, noone, 1, 1.2); //succeed sound
                if steve_cooking{
                    stevepotion = 1;
                	if concoction_id < 5 steve_bottle = steveid.mc_assets_storage.ultiSteve_assets_cache.potion.spr;
                	else if concoction_id < 7 steve_bottle = steveid.mc_assets_storage.ultiSteve_assets_cache.potion.lingering;
                	else steve_bottle = steveid.mc_assets_storage.ultiSteve_assets_cache.potion.splash;
                	steve_overlay = steveid.mc_assets_storage.ultiSteve_assets_cache.potion.overlay;
                	steve_color = variable_instance_get(steveid.mc_assets_storage.ultiSteve_assets_cache.potion_data, steve_pots[concoction_id]).color;
                }
                set_window(7);
            }else{
                sound_play(sound_get("bottles_clink_once"), 0, noone, 1, .8); //cancel sound
                lab_ui_act = 1;
                set_window(6);
            }
            cooking = 0;
        }
        clear_button_buffer(PC_SPECIAL_PRESSED);
        var inp = up_pressed? 0: ((right_pressed || left_pressed)? 1: (down_pressed? 2: -1));
        if cooking && inp+1{
            materials[inp]++;
            var h = spawn_hit_fx(x + 1*spr_dir, y - 34, cook_fx[inp]);
            h.depth = depth-2;
            sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1, .9 + random_func_2(123, 10, 1)/50); //menu input sound
            set_window(5);
            reset_stick();
        }
        if !steve_cooking && attack_pressed{
            lab_ui_act = 2;
            table.state = 2;
            table.timer = 0;
            table.meth = 0;
            sound_play(asset_get("sfx_pom_fspecial_charge2")); //meth cook input
            set_window(8);
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        break;
        
        
        case 10:
        lab_ui_pos = [table.x, table.y];
        table.meth++;
        if ego_boost table.meth++;
        can_attack = 1;
        can_jump = 1;
        can_attack = 1;
        can_strong = 1;
        can_ustrong = 1;
        can_special = 1;
        can_shield = 1;
        if table.meth >= meth_cook_time{
            table.meth = meth_cook_time-1;
            set_window(11);
        }
        break;
    }
    break;
    
    case AT_USPECIAL:
    if free fall_through = 1;
    can_wall_jump = 1;
    switch window{
        case 1:
        if free{
            if window_timer == 1 vsp = -3;
            if window_timer == window_end vsp = -8 - 3*(ego_boost>0);
        }
        if window_timer == window_end hsp = (6 - 4*free)*spr_dir;
        break;
        case 2:
        break;
        case 3:
        if free && window_timer == window_end vsp = -11 - 3*(ego_boost>0);
        if window_timer == window_end hsp = (8 - 5*free)*spr_dir;
        break;
        case 4:
        break;
        case 5:
        break;
    }
    break;
    
    case AT_FSPECIAL:
    switch window{
        case 1:
        if window_timer == 12 car = instance_create(x + 50*spr_dir, y + 2, "obj_article2");
        move_cooldown[attack] = 10;
        break;
        case 2:
        if window_timer == 1 && instance_exists(car){
            car.state = 4;
            car.timer = 0;
            car.fire_left = sign(car.x - x) == 1;
        }
        break;
        case 3:
        if 0 if !instance_exists(car) || !special_down{
            window = 4;
            timer = 0;
        }
        break;
    }
    break;
    
    case AT_TAUNT:
    if window == 1 && window_timer == window_end && !draw_jesse sound_play(sound_get("taunt"));
    draw_jesse--;
    if window == 3 && taunt_down window_timer = 6;
    break;
    
    case AT_TAUNT_2:
    switch window{
        case 1://dark eyes
        shake_camera(ceil(window_timer/30), 5);
        if window_timer == window_end{
            var g = spawn_hit_fx(x + 8, y - 60, sparkle);
            g.depth = depth-1;
            var g = spawn_hit_fx(x - 2, y - 60, sparkle);
            g.depth = depth-1;
        }
        break;
        case 4://spread arms and raise
        shake_camera(ceil(window_timer/30), 5);
        break;
        case 5://raise more
        shake_camera(ceil(1 + window_timer/30), 5);
        break;
        case 6://stop in the air
        shake_camera(6, 5);
        if window_timer == window_end{
            var g = spawn_hit_fx(x + 8, y - 30, 303);
            g.depth = depth+1;
        }
        break;
    }
    break;
}


#define ground_at_pos(xpos, ypos) //I'm lazy
return position_meeting(xpos, ypos, asset_get("par_block")) || position_meeting(xpos, ypos, asset_get("par_jumpthrough"));

#define set_window
/// set_window(win, win_tm = 0;)
var win = argument[0];
var win_tm = argument_count > 1 ? argument[1] : 0;;
window = win;
window_timer = win_tm;

#define reset_stick()
clear_button_buffer(PC_UP_STICK_PRESSED);
clear_button_buffer(PC_DOWN_STICK_PRESSED);
clear_button_buffer(PC_LEFT_STICK_PRESSED);
clear_button_buffer(PC_RIGHT_STICK_PRESSED);
clear_button_buffer(PC_UP_HARD_PRESSED);
clear_button_buffer(PC_DOWN_HARD_PRESSED);
clear_button_buffer(PC_LEFT_HARD_PRESSED);
clear_button_buffer(PC_RIGHT_HARD_PRESSED);

#define offset_hud
/// offset_hud(val, am = .2;)
var val = argument[0];
var am = argument_count > 1 ? argument[1] : .2;;
hud_offset = floor(lerp(hud_offset, val, am));