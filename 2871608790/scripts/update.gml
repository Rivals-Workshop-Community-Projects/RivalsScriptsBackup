//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
hbox_view = get_match_setting(SET_HITBOX_VIS);
game_time = get_gameplay_time();

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

//play intro
if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//renders effects
//credit to supersonic for the help
with (hit_fx_obj)
{
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

move_cooldown[AT_USPECIAL] = 1 + uspec_used;
if (!free || state == PS_WALL_JUMP) uspec_used = false;

//potassium deficiency (it puts players in pratfall for a limited time)
with (oPlayer) if ("banana_prat_time" in self)
{
    if (state == PS_PRATFALL && !hitpause)
    {
        if (banana_prat_time != -4)
        {
            banana_prat_time --;
            if (banana_prat_time == 0)
            {
                banana_prat_time = -4;
                has_airdodge = true;
                djumps = 0;
                state = PS_IDLE_AIR;

                if (url == "2601775097") glide_stamina = glide_stamina_max; //bar stamina reset
            }
        }
    }

    if (prev_state == PS_PRATLAND || prev_state == PS_PRATFALL) banana_prat_time = -4;
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == 0) fx_particles = 1;
}

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
prep_hitboxes();

//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if player_id == other {
        if "col" not in self {
            with other {
                other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
                if other.col == 0 other.col = c_red;
                other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if other.type == 1
                    other.sprite_index = __hb_hd_spr[other.shape];
                else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                    other.mask_index = __hb_hd_spr[other.shape];
                else 
                    other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}