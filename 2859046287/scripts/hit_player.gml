//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements

if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to tester work with hit_player

//this line takes the strong charge damage into consideration, useful if you want to include that for mechanics
true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

switch (my_hitboxID.attack)
{
    case AT_FTILT: //command grab
        //special function you can see below that sets the hit player to be grabbed
        if (my_hitboxID.hbox_num == 1 && !hit_player_obj.clone && !hit_player_obj.custom_clone) set_grab_id();
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        break;
    case AT_USTRONG: //strong charge increasing height
        sound_play(asset_get("sfx_ori_seinhit_heavy")); //play both these sounds when it hits someone
        sound_play(asset_get("sfx_blow_heavy2"));
        break;
    case AT_FAIR: //single input multihit
        if (my_hitboxID.hbox_num == 2) old_vsp = -2;
        //old_vsp and old_hsp are values that are recorded on hitpause to set player movement to continiue after it
        //by setting it here manually we are overwriting the existing value with our own, allowing us to add a bounce effect to our attacks
        break;
    case AT_NSPECIAL: //multihit projectile
        //for rune E, the 2nd charge for the nspecial projectile spawns an extra hitbox
        if (my_hitboxID.hbox_num == 2 && has_rune("E")) create_hitbox(AT_NSPECIAL, 4, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2);

        //slows down the final charge projectile on the first hit
        with (my_hitboxID)
        {
            if (proj_hit_count == 0)
            {
                //hsp *= 0.6;
                //vsp *= 0.6;
            }
        }
        break;
    case AT_FSPECIAL: //tether
        if (my_hitboxID.hbox_num == 2)
        {
            fspec_found_target = true; //tells the game to move the character to the success window
            set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; //hbox_num 1 is the collision hitbox, it should let go of grabbed players
        break;
}

//appying custom status code
//  yes, you can check any hitbox variable you like for this to work
//  just make sure you are check [my_hitboxID.attack] and [my_hitboxID.hbox_num]
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EFFECT) == 30)
{
    hit_player_obj.test_status_timer = test_status_time_set; //sets the status timer to the set time
    hit_player_obj.test_status_owner = self; //sets status owner to us (so we can show different colors on them)
}


with (my_hitboxID) if (type == 2)
{
    //psuedo melee hitbox hitpause
    if (psuedo_melee_hitbox)
    {
        with (other) //this "other" reffers to us, the player that's hitting
        {
            old_hsp = hsp; //set the speed values that should activate when exiting the move
            old_vsp = vsp;
            hitstop = get_hitstop_formula( //this formula is used to calculate how much hitpause we should get
                get_player_damage(hit_player_obj.player),
                other.damage,
                other.hitpause,
                other.hitpause_growth,
                0);
            hitstop_full = hitstop;
            hitpause = true; //we also need to manually set hitpause to true as it doesn't normally do this for projectiles
        }

        hitbox_hitstop = other.hitstop; //set the hitpause of the hitbox to the player's hitpause
        has_hit = other.has_hit; //set off the has_hit and has_hit_player flags, usually used for cancels
        has_hit_player = other.has_hit_player;
        in_hitpause = true; //the hitbox counterpart to the player's "hitpause" variable
    }

    //stop projectile homing if multihits start multihitting
    if (multihit_amount > 0 && homing_enabled) homing_enabled = false;

    ///////////////////////////////////////// MULTIHIT LOGIC /////////////////////////////////////////

    //if the multihit amount is more than 0 it should activate the multihit code
    if (multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}


#define set_grab_id
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)

    if (my_grab_id == noone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND))
    {
        my_grab_id = hit_player_obj;
    }
}