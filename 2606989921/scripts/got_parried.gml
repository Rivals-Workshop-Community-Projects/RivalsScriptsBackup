if (my_hitboxID.orig_player_id == self) && (my_hitboxID.attack == AT_NSPECIAL)
{
    my_hitboxID.destroyed = true;

    var hb = create_hitbox(my_hitboxID.attack, 2, my_hitboxID.x, my_hitboxID.y)
    hb.hsp = my_hitboxID.initial_hsp;
    hb.vsp = my_hitboxID.initial_vsp;
    hb.missingno_copied_player_id = hit_player_obj;
    //consume existing clones
    destroy_copies(hit_player_obj);
}

//clears saved attack index
msg_bspecial_last_move.target = noone;

//==========================================================
// destroy all current missingno-copies of a player
#define destroy_copies(target_client_id)
{
    with (obj_article2) if ("is_missingno_copy" in self)
                        && (client_id == target_client_id)
    {
        needs_to_die = true; //article consumed
    }
}