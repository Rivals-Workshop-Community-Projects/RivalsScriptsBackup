//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
    case AT_DSTRONG:
        switch (window)
        {
            case 1: //pre-jump
                //reset some stuff
                if (window_timer == 1) dstrong_fall_time = dstrong_cancel_time;  
                if (!hitpause && !hitstop)
                {
                    //sfx and vfx
                    if (window_timer == window_end_time){
                        sound_play(asset_get("sfx_jumpground"));
                        spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
                    }
                }
                break;
            
            case 2: //jump
                if (!hitpause && !hitstop)
                {
                    //go up if not charging the move
                    if (strong_charge <= 0) vsp = dstrong_initial_vsp;
                    else
                    {
                        vsp = 0;
                        hsp = clamp(hsp, -max_charge_hsp, max_charge_hsp);
                    }
                }
                break;
            case 3: //post-charge startup
                //fully prevent horizontal movement
                hsp = 0;
                can_move = false;
                
                if (!hitpause && !hitstop) vsp = dstrong_post_charge_vsp;
                if (window_timer == window_end_time) sound_play(asset_get("sfx_swipe_heavy1")); //sfx
                break;
            
            case 4: //fall
                if (dstrong_fall_time > 0) dstrong_fall_time--;
                
                //set vsp
                if (!hitpause && !hitstop)
                {
                    vsp = dstrong_falling_vsp;
                    //allow for jump cancelling if falling for long enough
                    if (dstrong_fall_time <= 0) can_jump = true;
                }
                
                //loop
                if (window_timer == window_end_time)
                {
                    window_timer = 0;
                    //destroy old falling hitbox just in case
                    destroy_hitboxes();
                }
                
                //spawn hitboxes in the middle of the window
                if (window_timer == round(window_end_time/2))
                {
                    if (!hitpause && !hitstop)
                    {
                        destroy_hitboxes();
                        create_hitbox(AT_DSTRONG, 2, floor(x), floor(y));
                    }
                }
                
                //land
                if (!free)
                {
                    if (!hitpause && !hitstop)
                    {
                        window = 5;
                        window_timer = 0;
                        
                        //destroy falling hitbox and create landing hitbox
                        destroy_hitboxes();
                        create_hitbox(AT_DSTRONG, 1, floor(x), floor(y));
                        
                        //landing sfx
                        sound_play( asset_get("sfx_blow_medium2"), false, noone, 0.7, 1.1 );
                    }
                }
                
                //fully prevent horizontal movement
                hsp = 0;
                can_move = false;
                break;
        }

        //disable fastfalling
        can_fast_fall = false;
        break;
    case AT_FSPECIAL:
        can_fast_fall = false;
        switch (window)
        {
            case 1: //reset charge
                if (window_timer == 1) fspec_charge = 0;
                break;
            case 2: //charge
                hsp = clamp(hsp, -2, 2);
                vsp = clamp(vsp, vsp, 2);
                
                //charge check
                if (fspec_charge < fspec_max_charge && special_down)
                {
                    window_timer = 0; //the charge is only active for the first frame of the attack
                    fspec_charge ++;

                    //variable tweaking for the hitbox (min, max)
                    set_hitbox_value(attack, 1, HG_DAMAGE, lerp(7, 13, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, lerp(7, 9, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, lerp(0.7, 0.9, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, lerp(8, 11, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, lerp(0.6, 0.8, fspec_charge/fspec_max_charge));

                    if (fspec_charge % 8 == 0 && !hitpause) spawn_base_dust(x, y, "land");
                }
                break;
            case 3: //dash
                vsp = 0;
                if (!hitpause) hsp = lerp(15, 40, fspec_charge/fspec_max_charge) * spr_dir; //dash movement speed
                uses_afterimage_trail = true;
            		if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free) {
                        for (var i = 1; i < 28; i++){
                            if (!place_meeting(x + hsp + 2 * spr_dir, y- i ,asset_get("par_block"))) {
                                y -= i;
                                if(hsp == 0){
                                	hsp = 10 * spr_dir;
                                }
                                break;
                            }
                        }
                    }
                break;
            case 4:
                uses_afterimage_trail = false;
                break;
            case 5: //endlag
                can_move = false;
                grav = 0.2;
                if (window_timer == window_end_time-1 && free) set_state(PS_PRATFALL);
                break;
        }
        break;
    case AT_DSPECIAL:
        switch (window)
        {
            //spawn save point
            case 3: //spawn SAVE point
                if (!instance_exists(artc_savepoint))
                {
                    sound_play(sound_get("sfx_save"));
                    artc_savepoint = instance_create(x, y, "obj_article1");
                }
                break;
            //teleport to save point
            case 6:
                if (instance_exists(artc_savepoint) && window_timer == window_end_time) with (artc_savepoint) if (saved_player == other)
                {
                    spawn_hit_fx(other.x, other.y - 40, other.fx_dspec_teleport);

                    saved_player.x = x;
                    saved_player.y = y;
                    saved_player.hsp = saved_hsp;
                    saved_player.vsp = saved_vsp;
                    chara_warped = true;
                }
                break;
        }
        break;
}


//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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
