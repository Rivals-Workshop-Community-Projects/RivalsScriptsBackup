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

if (msg_rune_flags.piercing_melee) && (my_hitboxID.type == 1)
{
    was_parried = false;
    hit_player_obj.invince_time = 0;
    hit_player_obj.invincible = false;
    with(hit_player_obj) set_state(free ? PS_PRATFALL : PS_PRATLAND);

    hit_player_obj.can_be_hit[player] = 12 + 1; //length of parry hitpause 

    //(can't seem to turn off the parrying status otherwise!?)
    hit_player_obj.perfect_dodging = false;
    hit_player_obj.perfect_dodged = false;
    hit_player_obj.hurtboxID.dodging = false;

    my_hitboxID.was_parried = false;
    my_hitboxID.can_hit[hit_player_obj.player] = true;
    my_hitboxID.length += 2; //connect next frame

    my_hitboxID.hitpause_timer = 12;
    my_hitboxID.in_hitpause = true;

}
else
//clears saved attack index
if (!msg_bspec_sketch_locked) 
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