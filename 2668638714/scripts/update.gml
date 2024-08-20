print(move_cooldown[AT_NSPECIAL_2])

if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;
    sound_play(sound_get("supereffective"));
}
galaxy_timer = max(galaxy_timer-1,0)

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)
{
    switch attack
    {
        case AT_TAUNT_2:
        if window == 3 and strong_powered_up
		{
			var t = spawn_hit_fx(x,y,kamikaze_vfx);
			t.depth = depth - 1;
			
			sound_play(sound_get("boom"));
            sound_play(asset_get("sfx_abyss_explosion_big"),false,noone,0.8,1);
            create_hitbox(AT_TAUNT_2,2,x,y-24)
			create_deathbox(x,y,10,10,player,true,0,10,1)
		}
        break;
        case AT_DSTRONG:
            if (window == 4 and window_timer == 0) and !hitpause
            {
                dstrong_hitbox = create_hitbox(attack, 3, x, y);
            }
            
            if (dstrong_hitbox != noone and window != 4)
            {
                instance_destroy(dstrong_hitbox);
            }
            
        break;
        case AT_NSPECIAL:
        
            if window == 1 and window_timer == 0
            {
                nspec_taunt = false;
            }
            
            if taunt_down nspec_taunt = true;
            
            if window == 1 and window_timer == 3 and nspec_taunt
            {
                sound_play(sound_get("yeet"));
            }
        
        break;
        case AT_NSPECIAL_2:
        if window == 2 and window_timer == 0 and !hitpause
        {
            move_cooldown[AT_NSPECIAL_2] = 60;
        }
        break;
        case AT_FSPECIAL:
        
        if ((window > 4 and window < 8) or (window == 4 and window_timer > 2)) and window_timer mod 2 == 0
        {
            var range = 36;
            var yrand = round(random_func(5,range,false)) - (range/2)
            var t = spawn_hit_fx(x-hsp,y-(char_height/2) + yrand,fspecialfx);
            t.draw_angle = point_direction(0,0,hsp,vsp) + (180*(spr_dir == -1));
        }
        
        
        //print("window = " +string(window))
        switch (window)
        {
            case 1:
            if window_timer == 0
            {
                vsp = 0;
                fspecial_ledgeforgiven = false;
            }
            break;
            
            case 2:
            
            if window_timer mod 10 == 0
            {
                //spawn_base_dust(x,y,"land")
                if !free
                {
                    spawn_base_dust(x-20,y,"dash",1)
                    spawn_base_dust(x+20,y,"dash",-1)
                }
                sound_play(asset_get("sfx_absa_cloud_crackle"), false, noone, 0.5, lerp(0.98,1.25,fspecial_charge/fspecial_max_charge) + (window_timer > 6)*.04 )
            }
            
            vsp *= 0.86 + min(fspecial_charge/400, .14);
            hsp = lerp(hsp, 0, 0.02)
            if !(special_down)
            {
                window = 3;
                window_timer = 0;
                
                set_hitbox_value(attack, 1, HG_DAMAGE, floor( ease_expoIn(fspecial_damage, fspecial_max_damage, fspecial_charge, fspecial_max_charge) ) )
                break;
            }
            if fspecial_charge == fspecial_max_charge -1
            {
                sound_play(asset_get("sfx_frog_fspecial_charge_full"))
            }
            fspecial_charge = min(fspecial_charge+1, fspecial_max_charge);
           
            
            if (shield_pressed)
            {
                window = 10;
                window_timer = 0;
            }
            
            break;
            
            case 3:
            if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
            {
                if (fspecial_charge == fspecial_max_charge)
                {
                    sound_play(asset_get("sfx_absa_uair"))
                    sound_play(sound_get("strong_2_charge"))
                    window = 6;
                    window_timer = -1;
                    strong_powered_up = true;
                }
                else
                {
                    strong_powered_up = false;
                }
                fspecial_charge = 0;
                break;
            }
            break;
            
            case 4:
            case 6:
            if (window_timer == 0) 
            {
                //print("fuck you")
                y-=2
                vsp = -2.4;
                hsp = ((window == 6 ? fspecial_speed_wcharge : fspecial_speed_spark)*spr_dir);
                if (window == 6 and !hitpause) take_damage(player,-1,5);
            }

            break;
            
            case 5:
            case 7:
            case 9:
            if (right_down-left_down == -spr_dir and !was_parried)
            {
                hsp -= sign(hsp)*1.35
            }
            
            if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
            {
                if window == 9
                {
                    var idle_state = free ? PS_IDLE_AIR : PS_IDLE;
                    set_state(get_window_value(attack,strong_powered_up ? 7 : 5,AG_WINDOW_TYPE) == 7 or was_parried ? PS_PRATFALL : idle_state);
                }
                else
                {
                    window = 9;
                    window_timer = 0;
                }
            }
            break;
            case 8:
            if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
            {
                set_state(PS_IDLE_AIR)
            }
            break;
        }
        
        
        
        //Thank you to Ducky for the ledge forgiveness template
            if (!fspecial_ledgeforgiven and (window >= 4 and window <= 7) and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
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
        break;
        case AT_USPECIAL:
        fall_through = true;
        switch (window)
        {
            case 1:
                if special_down uspec_held++
                
                if shield_down and !(uspec_held >= 12)
                {
                    uspec_parry_pressed = true;
                }
                
                if !uspec_parry_pressed and (uspec_held == 12 and (instance_exists(voltorb_obj) and voltorb_obj.state != PS_DEAD and voltorb_obj.state != PS_ATTACK_AIR))
                {
                    uspec_held++;
                    sound_play(sound_get("lockon"))
                    lockon_obj = spawn_hit_fx(voltorb_obj.x,voltorb_obj.y,lockon);
                    lockon_obj.depth = depth - 2;
                }
                
                if window_timer == 12
                {
                    sound_play(asset_get("sfx_absa_new_whip2"));
                    sound_play(asset_get("sfx_ori_ustrong_launch"));
                }
            break;
            case 2:
                if window_timer mod 3 == 0
                {
                    spawn_hit_fx(x,y-(char_height/2),switchfx)
                }
                
                if !hitpause
                {
                    var joy_angle = 90-((right_down-left_down)*30)
                    var activated = false;
                    
                    if !uspec_parry_pressed and ((instance_exists(voltorb_obj) and voltorb_obj.state != PS_DEAD and voltorb_obj.state != PS_ATTACK_AIR) and uspec_held > 12)
                    {
                        joy_angle = point_direction(x,y,voltorb_obj.x,voltorb_obj.y);
                        activated = true;
                    }
                    
                    var ratio = 1-(window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) )
                    vsp = lerp(vsp,lengthdir_y(22+(6*activated),joy_angle), ratio );
                    hsp = lerp(hsp,lengthdir_x(22+(6*activated),joy_angle), ratio );
                    
                    spr_angle = point_direction(0,0,hsp,vsp)-90
                    //hurtboxID.image_angle = spr_angle;
                    
                    var middle_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
                    
                    draw_x = middle_y*dsin(spr_angle);
                    draw_y = -(middle_y-middle_y*dcos(spr_angle));
                }
                
            break;
            case 3:
                if window_timer mod 3 == 0 and window_timer < 10
                {
                    spawn_hit_fx(x,y-(char_height/2),switchfx)
                }
                var middle_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
                draw_x = middle_y*dsin(spr_angle);
                draw_y = -(middle_y-middle_y*dcos(spr_angle));
                vsp*=0.87;
                hsp*=0.87;
                spr_angle = lerp(spr_angle, 0, 0.2)
                //hurtboxID.image_angle = spr_angle;
            break;
            default:
                hsp*=0.84;
                vsp*=0.84;
                spr_angle = 0;
                hurtboxID.image_angle = 0;
                draw_x = 0;
                draw_y = 0;
            break;
        }
        break;
        case AT_UAIR:
            if window == 2 and window_timer mod 4 == 0 and !hitpause
            {
                create_hitbox(attack, 1 + (window_timer > 6), x, y)
            }
        break;
        case AT_FTILT:
            if window == 4 and window_timer mod 2 == 1 and !hitpause
            {
                create_hitbox(attack, 2 + (window_timer > 6), x, y)
            }
        break;
        case AT_UTILT:
            if (window == 5)
            {
                if window_timer == 0 and !hitpause
                {
                    var dir = !joy_pad_idle ? clamp(joy_dir, 65, 115) : 90;
                    hsp = lengthdir_x(20,dir);
                    vsp = lengthdir_y(20,dir);
                }
                else
                {
                    hsp *=0.85;
                    vsp *=0.85;
                }
            }
            
            if window == 5 and window_timer mod 2 == 0 and !hitpause
            {
                create_hitbox(attack, 2 + (window_timer > 7), x, y)
            }
        break;
    }

}


if (state == PS_WALL_JUMP or state == PS_WALL_TECH) or !free
{
    fspecial_used = false;
    dspecial_used = false;
}

if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 1)
            sound_play(sound_get("uh_oh"));
        if(introTimer == 3)
            sound_play(sound_get("cry"),false,noone,.7)
        if(introTimer == 7)
            sound_play(asset_get("sfx_dust_knuckle"));
    }
}

if fspecial_used move_cooldown[AT_FSPECIAL] = 2;
if dspecial_used move_cooldown[AT_DSPECIAL] = 2;

if fspecial_charge == fspecial_max_charge
{
    knockback_adj = 1.15;
    dash_speed = 8.5
    if get_gameplay_time() mod 4 == 0
    {
        spawn_hit_fx(x-hsp + round(random_func(4, 40, false)) - 20 , y+ vsp - 24 + round(random_func(4, 20, false)) - 10, charged_vfx);
    }
    else if get_gameplay_time() mod 11 == 2
    {
        spawn_hit_fx(x+hsp + round(random_func(4, 6, false)) - 3, y+ vsp - 26 + round(random_func(4, 18, false)) - 9, charged_vfx2);
    }
}
else
{
    knockback_adj = 1.1;
    dash_speed = 7.5
}

if (instance_exists(lockon_obj))
{
    lockon_obj.x = voltorb_obj.x + voltorb_obj.hsp;
    lockon_obj.y = voltorb_obj.y + voltorb_obj.vsp;
}

if (instance_exists(thunderfx_obj))
{
    thunderfx_obj.x = x + hsp;
    thunderfx_obj.y = y + vsp;
}

if (get_player_stocks(player) == max_stocks && get_player_damage(player) == 0) {
	var foes = 0;
	var foes_dead = 0;
	for (var p = 0; p < array_length(player_refs); p++) {
		if player_refs[p].friend or get_player_stocks(player_refs[p].player) != 0 continue;
		
		foes += 1;
		if get_player_stocks(player_refs[p].player) == 0 {
			foes_dead += 1;
		}
	}
	if foes_dead == foes {
		set_victory_portrait(sprite_get("portrait_lfg"))
		set_victory_sidebar(sprite_get("result_small_lfg"))
	}
}

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