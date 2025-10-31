//hitbox_update

//==========================================================
if (attack == AT_USTRONG)
{
    if (coin_broken)
    {
        //gravitate to hole
        var target_x = orig_player_id.msg_blackholes[batch_index].x;
        var target_y = orig_player_id.msg_blackholes[batch_index].y;
        hsp *= 0.98;
        vsp *= 0.98;
        hsp += 0.7*(target_x - x + sign(target_y - y));
        vsp += 0.8*(target_y - y + sign(target_x - x));
        if (round(4*vsp*hsp) % 4 == 0) with (orig_player_id)
        {
            spawn_debuff_twinkle(hfx_glitchtwinkle, other.x, other.y, 10);
        }
    }
    else if (coin_fading) || (hitbox_timer + 16 > length)
    { 
        //flickering
        visible = (hitbox_timer % 4) > 2 || hitbox_timer < 10;
    }
    else if (!free && !grounds) || (y_pos_counter > 3)
    {
        coin_fading = true; 
        image_yscale = 0; //essentially turns off collider
        hitbox_timer = 0;
        img_spd = 0;
        image_index = floor(image_index);
        length = 20;
        hsp = 0;
    }
    else
    {
        //Shyguy DI glitch: check for victims already in hitstun
        var target_in_hitstun = false;
        var proj_team = get_player_team(player);
        var coin = self;

        with (oPlayer) if (state_cat == SC_HITSTUN) && (!hitpause)
        && (self != other.orig_player_id || other.can_hit_self)
        && (can_be_hit[other.player] == 0) && (other.can_hit[player])
        //teamattack check
        && ( (player == other.player && other.can_hit_self)
        ||   (proj_team != get_player_team(player) 
             || (temp_team_attack && other.player != player) ) )
        //minimum speed of hitstun
        && (point_distance(0, 0, hsp, vsp) > 6)
        {
            with (hurtboxID) //collision test
            {
                target_in_hitstun = place_meeting(x, y, coin);
            }
            if (target_in_hitstun) break;
        }

        //zero KB means that hit_player.gml can restore the previous speeds
        //..."Thanks" Dan?
        kb_value = target_in_hitstun ? 0 : original_kb_value;
        kb_scale = target_in_hitstun ? 0 : original_kb_scale;

        if (round(y) == previous_known_y_position) && (!msg_proj_should_slide)
           y_pos_counter++;
        else y_pos_counter = 0;

        //black hole glitch: breaking
        if (transcendent) && update_cardinality
        {
            var find = collision_circle(x, y, 5, asset_get("pHitBox"), true, true);
            if (find != noone) && (find.player != self.player) && (find.type == 2)
            {
                //Start the black hole
                coin_broken = true;
                hitpause = 0;
                kb_scale = 0.3;
                hitpause_growth = 1;
                extra_hitpause = 1;
                no_other_hit = 1;
                sdi_mult = 0.1
                sprite_index = sprite_get("proj_payday_broken");
                image_index = random_func(floor(y)%30, 4, true)
                img_spd = random_func(floor(x)%30, 1, false)

                sound_play(sound_get("black_hole_shooting_1"), false, noone, 0.12, 0.4);

                with(orig_player_id.msg_blackholes[batch_index])
                {
                    n++;
                    x += (other.x - x)/n;
                    y += (other.y - y)/n;
                }
            }
        }
        
        update_cardinality = !update_cardinality;
    }
    previous_known_y_position = round(y);
}

//==========================================================
if (attack == AT_FSPECIAL) && (hbox_num == 1)
{
    //animated droplet
    image_index = clamp(2 + (vsp/2), 0, 6)
}

//==========================================================
if (attack == AT_NSPECIAL)
{
    //early land: bounce
    if (!free && hitbox_timer < 12)
    {
        vsp -= 6;
    }
    //clone creation after enough time
    else if (!free && !msg_proj_should_slide) || (hitbox_timer >= length - 1) 
    {
        if (hbox_num == 1) destroy_copies(missingno_copied_player_id); //flushes old clones
        destroyed = true;

        with (orig_player_id) if instance_exists(other.missingno_copied_player_id) 
        {
            var k = spawn_hit_fx(other.x, other.y, hfx_ball_open);
            k.depth -= 20;
            sound_play(sound_get("ball_explode"));

            //ownership of projectile determines article's scripts when created in hitbox_update.gml
            //this un-parries the projectile for article creation (just in case) (dan pls)
            other.orig_player_id = self;
            other.orig_player = player;
            other.player_id = self;
            other.player = player;

            //y offset because of size of pokeball when landed
            var copy = instance_create(other.x, other.y + 12, "obj_article2");
            copy.client_id = other.missingno_copied_player_id;
            copy.client_id.msg_unsafe_handler_id = self; //to draw the clones
            var GRIDSNAP = 16;
            copy.client_offset_x = GRIDSNAP * floor((copy.x - copy.client_id.x) / GRIDSNAP);
            copy.client_offset_y = GRIDSNAP * floor((copy.y - copy.client_id.y) / GRIDSNAP);
            copy.is_clone_broken = (other.hbox_num == 2) && (other.image_index > 0);
        }
        else //no copy foe
        {
            var k = spawn_hit_fx(other.x, other.y, hfx_error_b);
            k.depth -= 20;
            sound_play(sound_get("079-B"));
        }
    }
    //special collision checks
    else if (hbox_num == 1)
    {
        if (msg_runeflag_control)
        {
            grav = 0;
            hsp = lengthdir_x(7, orig_player_id.joy_dir);
            vsp = lengthdir_y(7, orig_player_id.joy_dir);
        }

        var hbox = self;
        var hbox_has_hit = false;
        //clone duplication
        with (obj_article2) if (!hbox_has_hit) && (num == "2")
                            && ("is_missingno_copy" in self) && (state != 2)
        {
            with (client_id.hurtboxID) 
            { hbox_has_hit = place_meeting(x + other.client_offset_x, y + other.client_offset_y, hbox); }

            if (hbox_has_hit) with (hbox.orig_player_id)
            {
                sound_play(hbox.sound_effect);
                spawn_hit_fx(floor(hbox.x), floor(hbox.y), hbox.hit_effect);
                hbox.destroyed = true;

                var hbox_top = create_hitbox(hbox.attack, 2, hbox.x, hbox.y);
                hbox_top.missingno_copied_player_id = other.client_id;
                hbox_top.image_index = 1;
                hbox_top.length -= 15;
                hbox_top.hsp = max(abs(hbox.initial_hsp), 2);
                hbox_top.vsp = min(hbox.vsp, -2);
                
                var hbox_bot = create_hitbox(hbox.attack, 2, hbox.x, hbox.y);
                hbox_bot.missingno_copied_player_id = other.client_id;
                hbox_bot.image_index = 2;
                hbox_bot.hsp = -max(abs(hbox.initial_hsp), 2);
                hbox_bot.vsp = min(hbox.vsp, -2);

                if (hbox.msg_runeflag_noflush) other.needs_to_die = true; //only this copy consumed
                else destroy_copies(other.client_id); //all other copies consumed
            }
        }
        // Teammate interaction
        with (oPlayer) if (!hbox_has_hit)
                       && (self != other.orig_player_id)
                       && (get_player_team(player) == hbox.my_team)
        {
            with (hurtboxID) 
            { hbox_has_hit = place_meeting(x, y, hbox); }

            if (hbox_has_hit) with (hbox.orig_player_id)
            {
                sound_play(hbox.sound_effect);
                spawn_hit_fx(floor(hbox.x), floor(hbox.y), hbox.hit_effect);
                hbox.destroyed = true;

                var hb = create_hitbox(hbox.attack, 2, hbox.x, hbox.y)
                hb.hsp = hbox.initial_hsp;
                hb.vsp = hbox.initial_vsp;
                hb.missingno_copied_player_id = other;
                //consume existing clones
                destroy_copies(other);
            }
        }
        // Hit by melee hitbox
        with (pHitBox) if (!hbox_has_hit)
                       && (type == 1) && (hit_priority > 0)
                       && (orig_player_id != other.orig_player_id)
                       && (get_player_team(player) != hbox.my_team)
                       && place_meeting(x, y, hbox)
        {
            hbox_has_hit = true;
            var enemy_hitbox = self;

            with (hbox.orig_player_id)
            {
                sound_play(other.sound_effect);
                spawn_hit_fx(floor(hbox.x), floor(hbox.y), hbox.hit_effect);
                hbox.destroyed = true;

                var hb = create_hitbox(hbox.attack, 2, hbox.x, hbox.y)
                
                var angle = 90;
                with (hbox) angle = get_hitbox_angle(enemy_hitbox);

                hb.hsp = lengthdir_x(enemy_hitbox.kb_value, angle);
                hb.vsp = lengthdir_y(enemy_hitbox.kb_value, angle);
                hb.missingno_copied_player_id = enemy_hitbox.orig_player_id;
                //consume existing clones
                destroy_copies(other);
            }
        }
    }
}

//==========================================================
if (attack == AT_DSPECIAL_2)
{
    //All copied projectiles fall under here
    if (grounds == 0) && (!free) { destroyed = true; }
}


//==========================================================
if (attack == AT_JAB)
{
    //decorative Substitute
    if (hbox_num == 1) //fall over after parry
    {
        //todo: animate
    }
    else //knocked around after a hit
    {
        grounds = (vsp > 10) ? 2 : 0

        if (hitpause_timer > 0) 
        {
            image_index = 0;
            bkb_start = 0;
        }
        else if (!free)
        {
            var newsub = noone;
            with (player_id) newsub = create_hitbox(AT_JAB, 1, other.x, other.y + 10);
            newsub.spr_dir = spr_dir;
            newsub.hitbox_timer = 15;
            newsub.image_index = 3;
            newsub.hsp = hsp;
            destroyed = true;
            if (msg_unsafe)
            {
                newsub.sprite_index = asset_get("empty_sprite");
                newsub.hit_effect = 1;
                newsub.destroy_fx = 1;
                newsub.msg_unsafe = true;
            }
        }
        else
        {
            bkb_start += clamp(0.025 * point_distance(0, 0, hsp, vsp), 0.1, 0.5);
            image_index = bkb_start;
        }
    }

    if (hitpause_timer > 0)
    {
        hitbox_timer--;
        hitpause_timer--;
        vsp = 0; hsp = 0;

        if (hitpause_timer <= 0)
        {
            hsp = old_hsp; vsp = old_vsp;
        }
    }
    else
    {
        var blastzone_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
        var blastzone_l = get_stage_data(SD_LEFT_BLASTZONE_X);
        var blastzone_t = get_stage_data(SD_TOP_BLASTZONE_Y);
        var blastzone_b = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
        if ( y >= blastzone_b ) || ( y <= blastzone_t )
        || ( x >= blastzone_r ) || ( x <= blastzone_l )
        {
            if (!msg_unsafe) sound_play(asset_get("sfx_death1"), false, noone, 0.5, 1.5);
            instance_destroy(self); exit;
        }
        else if (hitbox_timer >= (length - 2)) 
        {
            if (!msg_unsafe) spawn_hit_fx(x + spr_dir*random_func_2(3, 20, true), 
                                          y - random_func_2(4, 30, true),
                                          (hitbox_timer % 2 == 0) ? hit_effect : destroy_fx);
        }
    }

}

//==========================================================
if (attack == AT_DAIR)
{
    if (!free && !msg_proj_should_slide) || (hitbox_timer >= length - 1)
    {
        destroyed = true;
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        if (dair_spawns_a_clone) with (orig_player_id)
        {
            var k = spawn_hit_fx(other.x, other.y, hfx_ball_open);
            destroy_copies(other.player_id);
            var copy = instance_create(other.x, other.y + 12, "obj_article2");
            copy.client_id = other.player_id;
            var GRIDSNAP = 16;
            copy.client_offset_x = GRIDSNAP * floor((copy.x - copy.client_id.x) / GRIDSNAP);
            copy.client_offset_y = GRIDSNAP * floor((copy.y - copy.client_id.y) / GRIDSNAP);
        }
    }
}

//==========================================================
// destroy all current missingno-copies of a player
#define destroy_copies(target_client_id)
{
    with (obj_article2) if ("is_missingno_copy" in self)
                        && (client_id == target_client_id) && (num == "2")
    {
        needs_to_die = true; //article consumed
    }
}



//============================================================
// return best detected hitbox that could hit you
#define detect_hit()
{
    var best_hitbox = noone;
    var best_priority = 0;
    
    //Detect hitboxes. (only those that could have damaged you)
    var team_attack = get_match_setting(SET_TEAMATTACK);

    var obj_player = player_id;
    var obj_sub = self;
    //newfound irrational hatred of nested withs
    for (var i = 0; i < instance_number(pHitBox); i++) 
    with (instance_find(pHitBox, i))  
        if (hit_priority > best_priority)
        && (self != obj_sub)
        && ( (player == obj_player.player)
        ||   (get_player_team(obj_player.player) != get_player_team(player) 
                        || (team_attack && player != obj_player.player) ) )
        && (obj_player.can_be_hit[player] == 0) && (can_hit[obj_player.player])
        && collision_circle(obj_sub.x, obj_sub.y - 20, 20, self, true, false)
    {
        best_hitbox = self;
        best_priority = hit_priority;
    }

    return best_hitbox;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define spawn_debuff_twinkle(vfx, pos_x, pos_y, width) // Version 0
    // THXNOZ
    var kx = pos_x - (width / 2) + random_func(1, 1, false) * width;
    var ky = pos_y - (width / 2) + random_func(2, 1, false) * width;

    var k = spawn_hit_fx(floor(kx), floor(ky), vfx);
    k.spr_dir = 4 + 4*random_func(5, 2, true);
    k.image_yscale = (2 + random_func(6, 2, true));
    k.draw_angle = random_func(3, 4, true) * 90;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion