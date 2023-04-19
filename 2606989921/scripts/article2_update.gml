#macro AR_STATE_NONE   -1
#macro AR_STATE_SPAWN   0
#macro AR_STATE_ACTIVE  1
#macro AR_STATE_DYING   2

//====================================================================
if !instance_exists(client_id) 
|| (client_id.object_index != asset_get("oPlayer"))
|| (client_id.state == PS_RESPAWN)
//makes no sense to continue like this
{ destroy_my_hitboxes(); instance_destroy(self); exit; }
//====================================================================
// 1-866-THX-SUPR
if  !is_in_playtesting &&
    ( ( y >= blastzone_b ) || ( y <= blastzone_t )
   || ( x >= blastzone_r ) || ( x <= blastzone_l ) )
{
    //death of clone
    with (client_id) sound_play(asset_get("sfx_death1"), false, noone, 0.5, 1.5);
    destroy_my_hitboxes(); instance_destroy(self); exit;
}
//====================================================================
//collision checks, including physics
do_collision_checks();
//====================================================================



switch (state)
{
//====================================================================
    case AR_STATE_SPAWN:
    {
        //Spawning animation (see above: proxy-collides, but doesnt copy hitboxes)
        if (state_timer > spawn_time) 
            set_state(AR_STATE_ACTIVE);
    } break;
    case AR_STATE_DYING:
    {
        //Dying animation (no longer physical)
        if (state_timer > death_time)
        { destroy_my_hitboxes(); instance_destroy(self); exit; }
    } break;
//====================================================================
    case AR_STATE_ACTIVE:
    {
        var has_copied_a_hitbox = false;
        //detect & copy new melee hitboxes over
        with (pHitBox) if (type == 1) && (orig_player_id == other.client_id)
        {
            // note: variable reused for yoyo glitch (this is intentional, lerped hitboxes should not be copied)
            if ("missingno_hitbox_is_copy_of" in self)
            {
                // maintenance on hitbox you copied
                if (missingno_hitbox_is_copy_for == other && instance_exists(missingno_hitbox_is_copy_of))
                {
                    other.was_parried |= was_parried; //parries the clone, so swapping is required
                    has_copied_a_hitbox = true;
                    
                    length = max(missingno_hitbox_is_copy_of.length, 1);
                    hitbox_timer = max(0, missingno_hitbox_is_copy_of.hitbox_timer - 1);
                    x_pos = missingno_hitbox_is_copy_of.x_pos + other.client_offset_x;
                    y_pos = missingno_hitbox_is_copy_of.y_pos + other.client_offset_y;
                }
            }
            // copy new hitboxes (as per above, does not consider copied hitboxes)
            else if (other.missingno_unique_identifier not in self)
            {
                has_copied_a_hitbox = true;
                var hb_copy = noone;
                with (orig_player_id) 
                { hb_copy = create_hitbox(other.attack, other.hbox_num, floor(other.x), floor(other.y)); }

                hb_copy.x_pos = x_pos + other.client_offset_x;
                hb_copy.y_pos = y_pos + other.client_offset_y;
                hb_copy.missingno_hitbox_is_copy_of = self;
                hb_copy.missingno_hitbox_is_copy_for = other;

                variable_instance_set(self, other.missingno_unique_identifier, true);

                hb_copy.length = max(length, 1);
                hb_copy.hitbox_timer = max(0, hitbox_timer - 1);
            }
        }

        if (state_timer > max_lifetime) 
        && (!has_copied_a_hitbox)
        && (client_id.msg_clone_tempswaptarget != self)
        && (client_id.state_cat != SC_HITSTUN)
        {
            //allowed to die when not actively being used
            set_state(AR_STATE_DYING);
        }

    } break;
//============================================================
}

//flagged for mortality
if (needs_to_die && state != AR_STATE_DYING) set_state(AR_STATE_DYING);

//render order (because of missingno predraw render shenans)
depth = min(depth, client_id.depth - 1); 

//timers
state_timer++;
force_hitpause_cooldown = max(0, force_hitpause_cooldown - 1);

//===============================================================
if (!instance_exists(missingno_master_copy))
{
    // find elder
    // depends on script execution order starting with youngest articles
    // therefore last article found is eldest
    with (obj_article2) if ("is_missingno_copy" in self)
    {
        other.missingno_master_copy = self;
    }
}
//is elder article, therefore is updated last. time to handle swaps/collisions
if (missingno_master_copy == self) late_update();
//===============================================================

//============================================================
#define set_state(new_state)
{
    destroy_my_hitboxes(); 
    state = new_state;
    state_timer = 0;
}

//============================================================
#define do_hitpause(target_player)
if (force_hitpause_cooldown <= 0) //cannot force hitpause too often
with (target_player) if (object_index == oPlayer)
{
    //Do not override previous old_hsp values if already in hitpause
    if (!hitpause)
    {
        old_hsp = hsp;
        old_vsp = vsp;
        hitpause = true;
    }
    hitstop = max(1, hitstop);
    hitstop_full = max(1, hitstop_full);
}
force_hitpause_cooldown = force_hitpause_cooldown_max;

//============================================================
// return best detected hitbox that could hit you
#define detect_hit()
{
    var best_hitbox = noone;
    var best_priority = 0;
    
    //Detect hitboxes. (only those that could have damaged you)
    var team_attack = get_match_setting(SET_TEAMATTACK);

    var obj_player = client_id;
    var obj_copy = self;
    //newfound irrational hatred of nested withs
    for (var i = 0; i < instance_number(pHitBox); i++) 
    with (instance_find(pHitBox, i))  
                    if (hit_priority > best_priority)
                    && ( (player == obj_player.player && can_hit_self)
                    ||   (get_player_team(obj_player.player) != get_player_team(player) 
                                   || (team_attack && player != obj_player.player) ) )
                    && (obj_player.can_be_hit[player] == 0) && (can_hit[obj_player.player])
                    ///copy-ball interaction controlled by the projectile. see hitbox_update.gml
                    && ("missingno_copied_player_id" not in self)
                    && (groundedness == 0 || (obj_player.free ? 2 : 1) == groundedness)
                    && place_meeting(x - obj_copy.client_offset_x, y - obj_copy.client_offset_y, obj_player.hurtboxID)
    {
        best_hitbox = self;
        best_priority = hit_priority;
    }

    return best_hitbox;
}

//============================================================
//cannot delete self so carelessly; need to remove old hitboxes
#define destroy_my_hitboxes()
{
    with (pHitBox) if ("missingno_hitbox_is_copy_of" in self)
                   && (missingno_hitbox_is_copy_for == other)
    {
        instance_destroy(self);
    }
}

//============================================================
// sort of a late-article-update.gml
// oldest/last article processes extra update steps to be consistent 
#define late_update()
{
    //in case of spawning articles, refer to this guy
    var root_missingno_owner = player_id;

    // this is with (oPlayer)
    //except GML is drunk and screws up nested withs
    for (var i = 0; i < instance_number(oPlayer); i++) 
    with (instance_find(oPlayer, i))
    {
        //note: lots of logic here assumes a player has a clone when its possibly not the case... to optimize
        var best_swap = { hb:noone, copy:noone };
        var death_swap = { about_to_die:false, copy:noone, distance:9999999 };
        var parry_swap = noone;

        //general status
        var best_adjustment = { on_plat:false, on_solid:false, hit_wall:false, hit_ceiling:false, x_displacement:0, y_displacement:0 }

        //proxy-ground movement status
        var requires_off_ledge = false; //if this is true, requires off_ledge manipulation on current attack
        var requires_roll_swap = false; //if this is true, temp swap is needed for duration of roll
        var ledge_test_direction = 0; //0: noone, -1/1: only left or right
        var ledge_checks = { left:noone, right:noone }
        var col_width = 20;

        //proxy-wall interaction status
        var requires_wall_check = (state == PS_ATTACK_GROUND || free); //if this is true, start checking with below
        var requires_wall_swap = false; //if this is true, temp swap is needed since character is currently close to a wall
        var wall_swap_target = noone;

        if (state == PS_ATTACK_GROUND || (state == PS_ATTACK_AIR && !free)) && 
        (!off_edge || msg_clone_last_attack_that_needed_offedge == attack)
        {
            requires_off_ledge = true;
            if (ground_check(x - col_width, y+1)) ledge_checks.left = self;
            if (ground_check(x + col_width, y+1)) ledge_checks.right = self;
        }

        if (requires_wall_check)
        && (place_meeting(x+2, y, asset_get("par_block")) || place_meeting(x-2, y, asset_get("par_block")))
        {
            //potentially inside of a wall swap right now
            requires_wall_swap = true;
            wall_swap_target = self;
        }
        else if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
             || (state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD)
        {
            requires_roll_swap = true;
            ledge_test_direction = -spr_dir;
            if (state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) ledge_test_direction *= sign(techroll_speed);
            else ledge_test_direction *= sign(state == PS_ROLL_FORWARD ? roll_forward_max : roll_backward_max);

            if (ground_check(x - col_width, y+1)) ledge_checks.left = self;
            if (ground_check(x + col_width, y+1)) ledge_checks.right = self;
        }

        if (perfect_dodging)
        {
            add_parry_flags(self);
        }
        else if (was_parried)
        {
            destroy_copies(self);
        }

        death_swap.about_to_die = !other.is_in_playtesting && 
                                ( ( y + vsp >= other.blastzone_b ) || ( y + vsp <= other.blastzone_t )
                               || ( x + hsp >= other.blastzone_r ) || ( x + hsp <= other.blastzone_l ) );

        with (obj_article2) if ("is_missingno_copy" in self)
                            && (client_id == other)
        {
            //============================================================
            //test for hitswapping
            if (was_parried && !prev_was_parried)
            {
                parry_swap = self;
                prev_was_parried = true; //so it doesnt swap multiple times
            }
            if (state == AR_STATE_ACTIVE)
            {
                var detected_hitbox = detect_hit();
                if (detected_hitbox != noone)
                && (best_swap.hb == noone || best_swap.hb.hit_priority < detected_hitbox.hit_priority)
                {
                    best_swap.hb = detected_hitbox;
                    best_swap.copy = self;
                }

                if (death_swap.about_to_die)
                {
                    //collect best copy to swap to based on distance
                    var curr_distance = point_distance(other.x, other.y, x, y);
                    if (death_swap.distance > curr_distance)
                    {
                        death_swap.copy = self;
                        death_swap.distance = curr_distance;
                    }
                }
            }
            //============================================================
            //collision results
            
            //ceiling bump
            if (other.vsp < 0)
            {
                if (best_adjustment.y_displacement < collision_checks.y_displacement)
                {
                    best_adjustment.y_displacement = collision_checks.y_displacement;
                    best_adjustment.hit_ceiling = collision_checks.hit_ceiling;
                }
            }
            //test for landing status
            else
            {
                if (best_adjustment.y_displacement > collision_checks.y_displacement)
                {
                    best_adjustment.y_displacement = collision_checks.y_displacement;
                    best_adjustment.on_solid = collision_checks.on_solid;
                    best_adjustment.on_plat = collision_checks.on_plat;
                }
                else if (best_adjustment.y_displacement == collision_checks.y_displacement)
                     || (other.state == PS_AIR_DODGE) //exception to allow waveland-snapping
                {
                    if (collision_checks.on_solid || collision_checks.on_plat)
                        best_adjustment.y_displacement = collision_checks.y_displacement;

                    best_adjustment.on_solid |= collision_checks.on_solid;
                    best_adjustment.on_plat |= collision_checks.on_plat;
                }

                if (requires_off_ledge || requires_roll_swap) 
                && (collision_checks.on_plat || collision_checks.on_solid)
                {
                    //test for ground left/right of current position to determine off_ledge availability
                    if (requires_off_ledge || ledge_test_direction < 0)
                    && (ledge_checks.left == noone && ground_check(x - col_width, y+1)) ledge_checks.left = self;
                    if (requires_off_ledge || ledge_test_direction > 0)
                    && (ledge_checks.right == noone && ground_check(x + col_width, y+1)) ledge_checks.right = self;
                }
            }
            
            //horizontal bumping into walls
            if (abs(best_adjustment.x_displacement) < abs(collision_checks.x_displacement))
            {
                best_adjustment.x_displacement = collision_checks.x_displacement;
                if (requires_wall_check)
                {
                    requires_wall_swap = collision_checks.hit_wall;
                    if (wall_swap_target != other) wall_swap_target = self;
                }
                else
                {
                    best_adjustment.hit_wall = collision_checks.hit_wall;
                }
            }
            //===========================================================
        }

        //===========================================================
        //Swap - once per player only (hopefully)
        if (best_swap.copy != noone) with (best_swap.copy) 
        {
            //priority swap: getting hit
            swap_with_player();
            if (best_swap.hb != noone)
            {
                //ensure hit connects
                if (best_swap.hb.type == 1) //"Melee"
                {
                    //fake hitpause
                    do_hitpause(client_id);
                    do_hitpause(best_swap.hb.player_id);
                }
                else //type 2 "Projectile"
                {
                    //give a tad more length to allow connecting
                    do_hitpause(client_id);
                    best_swap.hb.length = max(2, best_swap.hb.length)
                    best_swap.hb.hitbox_timer = min(best_swap.hb.hitbox_timer, best_swap.hb.length - 1)
                }
            }
        }
        else if (death_swap.copy != noone) with (death_swap.copy)
        {
            //next priority swap: prevent a death
            swap_with_player();
            //consumes clone (prevents swapping back-and-forth)
            set_state(AR_STATE_DYING);
        }
        else if (parry_swap != noone)
        {
            // if a clone got parried, it collapses the clone location
            with (parry_swap) swap_with_player();
        }
        else if (requires_roll_swap)
        {
            //todo: possibly need to reorder those checks
            //I feel like this could be optimized?
            var roll_temp_swap = (ledge_test_direction > 0 ? ledge_checks.right : ledge_checks.left);
            if (roll_temp_swap != self)
            {
                with (roll_temp_swap) temp_swap_with_player();
            }
        }
        else if (requires_wall_swap)
        {
            if (wall_swap_target != self)
            {
                with (wall_swap_target) temp_swap_with_player();
                //I'm sorry dan
                if ("url" in self && url == CH_SYLVANOS 
                && state == PS_ATTACK_AIR && attack == AT_USPECIAL) msg_clone_tempswaptarget = noone;
            }
        }
        else if (msg_clone_tempswaptarget != noone)
        {
            //undo temp_swapping
            if (!free) best_adjustment.on_plat = true; //needed to not stutter for a frame; we were just grounded
            with (msg_clone_tempswaptarget) swap_with_player();
        }

        //Attack needs off-edge tampering
        if (requires_off_ledge)
        && ( ((hsp < -spr_dir) && (ledge_checks.left != self) && (ledge_checks.left != noone))
          || ((hsp > -spr_dir) && (ledge_checks.right != self) && (ledge_checks.right != noone)) )
        {
            set_attack_value(attack, AG_OFF_LEDGE, 1);
            if (attack != msg_clone_last_attack_that_needed_offedge)
            {
                //canceled from other attack
                if (msg_clone_last_attack_that_needed_offedge != noone)
                {
                    reset_attack_value(msg_clone_last_attack_that_needed_offedge, AG_OFF_LEDGE);
                }
                msg_clone_last_attack_that_needed_offedge = attack;
            }
        }
        else if (msg_clone_last_attack_that_needed_offedge != noone)
        {
            //restore this index to its original value
            reset_attack_value(msg_clone_last_attack_that_needed_offedge, AG_OFF_LEDGE);
            msg_clone_last_attack_that_needed_offedge = noone;
        }

        //===========================================================
        //Collision results
        if (best_adjustment.hit_ceiling)
        {
            y += best_adjustment.y_displacement; 
            vsp = 0;
        }
        else
        {
            if ("msg_clone_microplatform" not in self) msg_clone_microplatform = noone;

            if (best_adjustment.on_plat || best_adjustment.on_solid)
            {
                if (free && (vsp > 0 || state == PS_AIR_DODGE))
                {
                    y += best_adjustment.y_displacement;
                }

                if !instance_exists(msg_clone_microplatform)
                {
                    with (root_missingno_owner) other.msg_clone_microplatform = instance_create(0, 0, "obj_article_platform");
                    msg_clone_microplatform.client_id = self;
                    msg_clone_microplatform.x = x;
                    y = floor(y + vsp); //prevent oddities where fractional position stutters landing
                    msg_clone_microplatform.y = y;
                }
                msg_clone_microplatform.die_condition = 0;
                msg_clone_microplatform.lifetime = 1;
                msg_clone_microplatform.act_as_solid = best_adjustment.on_solid;
            }
            else if instance_exists(msg_clone_microplatform)
            {
                msg_clone_microplatform.external_should_die = true;
            }
        }
        if (best_adjustment.hit_wall)
        {
            x += best_adjustment.x_displacement; 
            hsp = 0;
        }
        //===========================================================
    }
}

//============================================================
// this detected a hit, exchange position with the real player
#define swap_with_player()
{
    var my_x = x;
    var my_y = y;
    //take his place
    x = client_id.x;
    y = client_id.y;
    //he takes mine
    client_id.x = my_x;
    client_id.y = my_y;

    //adjust relative position
    client_offset_x *= -1;
    client_offset_y *= -1;

    //swapping cancels temp-swaps
    //(see below: even though temp_swap uses this swap function, it is equipped to restore this)
    client_id.msg_clone_tempswaptarget = noone;

    //update to all copies
    for (var i = 0; i < instance_number(obj_article2); i++) 
    with (instance_find(obj_article2, i)) if ("is_missingno_copy" in self)
                                          && (client_id == other.client_id)
    {
        //adjust relative offset of all OTHER copies
        if (self != other)
        {
            client_offset_x += other.client_offset_x;
            client_offset_y += other.client_offset_y;
            x = client_id.x + client_offset_x;
            y = client_id.y + client_offset_y;
        }

        //adjust hitbox positions
        with (pHitBox) if (type == 1) && (orig_player_id == other.client_id)
        {
            // note: variable reused for yoyo glitch (this is intentional, lerped hitboxes should not be copied)
            if ("missingno_hitbox_is_copy_of" in self)
            && (missingno_hitbox_is_copy_for == other && instance_exists(missingno_hitbox_is_copy_of))
            {
                x_pos = missingno_hitbox_is_copy_of.x_pos + other.client_offset_x;
                y_pos = missingno_hitbox_is_copy_of.y_pos + other.client_offset_y;
            }
        }
        
        //TODO: setup swap_cooldown (on clones? or on players? not sure theres a difference)
        //note: must not prevent tempswapping
    }

    //Microplatform (if it exists) needs to follow the client player to its destination
    if ("msg_clone_microplatform" in client_id) && instance_exists(client_id.msg_clone_microplatform)
    {
        client_id.msg_clone_microplatform.x = client_id.x;
        client_id.msg_clone_microplatform.y = client_id.y;
    }
}
//============================================================
// exchange position with player 
#define temp_swap_with_player()
{
    prev_tempswap = client_id.msg_clone_tempswaptarget;

    swap_with_player(); //internally resets msg_clone_tempswaptarget
    
    if (prev_tempswap == noone)
    {
        //mark self as the original position to restore to later
        client_id.msg_clone_tempswaptarget = self;
    }
    else if (prev_tempswap != self)
    {
        client_id.msg_clone_tempswaptarget = prev_tempswap;
    }
    //else: temp-swap has restored to the original position, can stop keeping track
}

//============================================================
// 
#define do_collision_checks()
{
    //parameter updates
    spr_dir = client_id.spr_dir;
    mask_index = client_id.mask_index;
    image_xscale = client_id.image_xscale;
    image_yscale = client_id.image_yscale;

    //Position to reach this frame to sync with player
    var target_x = floor(client_id.x + client_offset_x + client_id.hsp);
    var target_y = floor(client_id.y + client_offset_y + client_id.vsp);

    var displacement_x = 0; //target_x - displacement_x = expected_x (but got shifted by solids)
    var displacement_y = 0; //Note that it is negative because it is meant to be applied on the PLAYER (see late_update)

    var mov_dir = sign(target_x - x + 0.000001); //bias to avoid zero

    //Does client ignore platforms? Clones should too
    var client_fallthrough = (client_id.state != PS_ATTACK_AIR 
                           && client_id.state != PS_ATTACK_GROUND
                           && client_id.state != PS_AIR_DODGE)
                           && client_id.fall_through //possibly optimizes all of the above!? 
                           && ((client_id.free && client_id.down_down) || client_id.down_hard_pressed);

    //is client airdodging? extra attempts to snap to ground
    var client_airdodge_leniency = (client_id.state == PS_AIR_DODGE
                                    && client_id.vsp >= 0 && client_id.hsp != 0)

    var pretested_y = target_y;
    var airdodge_snap_max = 12;
    if (client_airdodge_leniency)
    {
        y -= airdodge_snap_max;
        pretested_y += airdodge_snap_max;
    }

    //============================================================================
    // collision stepping
    var par_block = asset_get("par_block");
    var par_jumpthrough = asset_get("par_jumpthrough");

    //going down without fallthrough: platforms become relevant (if there are any closeby)
    var check_plats = (y < target_y) && (!client_fallthrough)
     && (noone != collision_rectangle(x - mov_dir*20, y, target_x + mov_dir*20, pretested_y, par_jumpthrough, true, true));

    if (check_plats || place_meeting(target_x, pretested_y, par_block)
                    || place_meeting(floor(lerp(x, target_x, 0.5)), floor(lerp(y, pretested_y, 0.5)), par_block) )
                    // If you're going so fast a half-step test can't keep up, please consider therapy
    {
        //DETECTED POTENTIAL COLLISION, activate step mode
        var found_plat_every_step = false;
        if (check_plats) 
        {
            //avoid plat false positives by reducing size of mask
            image_yscale = min(image_yscale, 0.05);
        }
        var num_steps = max(abs(x - target_x), abs(y - target_y));

        var last_valid_x = x;
        var last_valid_y = y;

        for (var step = 0; step < num_steps; step++)
        {
            var lerp_factor = (1.0 + step)/num_steps;
            var test_x = floor(lerp(x, target_x, lerp_factor));
            var test_y = floor(lerp(y, target_y, lerp_factor));
            
            var hit_plat = false;
            if (check_plats) 
            {
                hit_plat = place_meeting(test_x, test_y, par_jumpthrough) 
                       && !place_meeting(test_x, test_y - 1, par_jumpthrough)
                       &&  place_meeting(last_valid_x, test_y, par_jumpthrough)
            }

            var hit_solid = place_meeting(test_x, test_y, par_block);

            if (hit_plat || hit_solid) break;
            else
            {
                last_valid_x = test_x;
                last_valid_y = test_y;
            }
        }

        if client_airdodge_leniency && !(hit_plat || hit_solid)
        {
            //try to find something right below just in case
            for (var extra_step = 0; extra_step < airdodge_snap_max; extra_step++)
            {
                if place_meeting(last_valid_x, last_valid_y + extra_step + 1, par_block)
                || place_meeting(last_valid_x, last_valid_y + extra_step + 1, par_jumpthrough)
                {
                    last_valid_y += extra_step; break;
                }
            }
        }

        displacement_x = last_valid_x - target_x;
        displacement_y = last_valid_y - target_y;

        target_x = last_valid_x;
        target_y = last_valid_y;
    }
    //============================================================================

    x = target_x;
    y = target_y;

    //where you are VS where you were expecting to be
    collision_checks.x_displacement = displacement_x;
    collision_checks.y_displacement = displacement_y;

    image_xscale = client_id.image_xscale;
    image_yscale = client_id.image_yscale;

    // if landed on a platform (approx. check)
    var colw = 20;
    collision_checks.on_plat = !client_fallthrough
       && (noone != collision_rectangle(x+colw, y, x-colw, y+1, par_jumpthrough, true, true))
       && (noone == collision_rectangle(x+colw, y-1, x-colw, y-2, par_jumpthrough, true, true))
    collision_checks.on_solid = place_meeting(x, y+1, par_block);

    // if had touched a ceiling
    collision_checks.hit_ceiling = false;
    if (collision_checks.y_displacement > 0)
        collision_checks.hit_ceiling = place_meeting(x, y-1, par_block);

    // if had touched a wall
    collision_checks.hit_wall = false;
    if (abs(collision_checks.x_displacement) > 0)
        collision_checks.hit_wall = place_meeting(x - sign(collision_checks.x_displacement), y, par_block);
}

//============================================================================
#define ground_check(pos_x, pos_y)
{

    return position_meeting(pos_x, pos_y, asset_get("par_block"))
        || position_meeting(pos_x, pos_y, asset_get("par_jumpthrough"));
}

//==========================================================
// destroy all current missingno-copies of a player
#define destroy_copies(target_client_id)
{
    for (var i = 0; i < instance_number(obj_article2); i++) 
    with (instance_find(obj_article2, i)) 
        if ("is_missingno_copy" in self)
        && (client_id == target_client_id)
        {
            needs_to_die = true; //article consumed
        }
}

//==========================================================
// add the was_parried flag to all touched hitboxes
#define add_parry_flags(parrier)
{
    for (var i = 0; i < instance_number(pHitBox); i++) 
    with (instance_find(pHitBox, i)) 
        if (type == 1 && orig_player_id != parrier)
        && place_meeting(x, y, parrier.hurtboxID)
    {
        was_parried = true;
    }
}