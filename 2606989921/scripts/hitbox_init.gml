//hitbox_init
//==========================================================
if (attack == AT_JAB)
{
    if ("msg_unsafe" not in self) msg_unsafe = false;
    //TRUE if its meant as desync
    //cannot actually be desynced; but must stick around invisibly instead
}
//==========================================================
else if (attack == AT_USTRONG)
{
    coin_fading = false;
    coin_broken = false; //black hole rune
    batch_index = orig_player_id.msg_blackhole_index;

    original_kb_value = kb_value;
    original_kb_scale = kb_scale;
    temp_team_attack = get_match_setting(SET_TEAMATTACK);

    //prevent coins from lingering on stagearticles which do not trigger !free
    previous_known_y_position = y;
    y_pos_counter = 0;
}
//==========================================================
else if (attack == AT_DAIR)
{
    dair_spawns_a_clone = (enemies == 0);
}
//==========================================================
else if (attack == AT_FSPECIAL_2) && (hbox_num == 2)
{
    var bubble_can_hit = orig_player_id.msg_collective_bubble_lockout;

    for (var p = 0; p < array_length(bubble_can_hit); p++)
    {
        can_hit[p] = bubble_can_hit[p] == 0;
    }
}
else if (attack == AT_FSPECIAL_2) && (hbox_num == 1)
{
    uses_shader = false;
}
//==========================================================
else if (attack == AT_FSPECIAL_AIR) //Hydro Pump
{
    uses_sprite_collision = false; //to show hitbox

    if (hbox_num == 2) 
    {
        //hydro-cannon needs rotation
        image_angle = -90*spr_dir;
        proj_angle = -90*spr_dir;
        //yes, this showcases a dan moment. this is intentional.
    }
}
//==========================================================
else if (attack == AT_NSPECIAL)
{
    if ("missingno_copied_player_id" not in self)
        missingno_copied_player_id = player_id;

    msg_runeflag_control = orig_player_id.msg_rune_flags.nspecial_controlled;
    msg_runeflag_noflush = player_id.msg_is_bspecial ? player_id.msg_bspec_effective_runeflags.nspecial_nocloneflush
                                                     : player_id.msg_rune_flags.nspecial_nocloneflush;

    //bypass team attack 
    my_team = get_player_team(orig_player_id.player);
    for (var p = 1; p < array_length(can_hit); p++)
    {
        if (is_player_on(p)) can_hit[p] = (get_player_team(p) != my_team);
    }
}

//Meant for NSPECIAL, but doesnt hurt to have universally
initial_hsp = hsp;
initial_vsp = vsp;

//Rune: HOLP
if (orig_player_id.msg_holp_pos.x != 0) && (orig_player_id.msg_holp_pos.y != 0)
//Exception: the broken halves of an already-thrown ball
&& !(attack == AT_NSPECIAL && hbox_num == 2)
{
    //consider adding the section you are currently in
    x = orig_player_id.msg_holp_pos.x;
    y = orig_player_id.msg_holp_pos.y;
    //NOTE: the following do not go through here when shot:
    // - Stolen Projectiles in Ghost Arrow
    // - Players (FSpec rune)
    // - DSPEC Pocket out 
}

//==========================================================
// Rune: No ground behaviors
msg_proj_should_slide = (orig_player_id.msg_rune_flags.proj_sliding);
if (msg_proj_should_slide)
{
    grounds = 7; //nonvalue that acts like zero.
}

// Rune: Doubled size
if (orig_player_id.msg_rune_flags.proj_larger)
{
    image_xscale *= 2;
    image_yscale *= 2;
    draw_xscale *= 2;
    draw_yscale *= 2;
}