//update.gml

//==============================================================
//ensure an update article exists
if !instance_exists(msg_other_update_article)
{
    msg_other_update_article = instance_create(0, 0, "obj_article1");
    with (oPlayer) if (self != other)
    {
        //somehow init gets to run after another's update frame. go figure.
        if ("msg_other_update_article" in self)
            instance_destroy(msg_other_update_article);

        msg_other_update_article = other.msg_other_update_article;
    }
}

//==============================================================================
// Runes
if (request_stats_update)
{
    user_event(3);
    request_stats_update = false;
}

//==============================================================
//First-jump physics: same as shorthop, just with teleport
//jump_down is the full-hop condition. shield_down prevents breaking wavedash
//note: tap_jump_pressed lasts 6 frames. if jumpsquat lasts longer, this effect is lost.
if (state == PS_FIRST_JUMP && state_timer == 0 && !shield_pressed)
{
    //Rune: Inverted Fullhop Logic 
    if (jump_down || tap_jump_pressed) != (msg_rune_flags.invert_fullhop)
         y -= msg_firstjump_height;
}

//==============================================================
//crawling 
var currently_crawling = false; //required for colliders later

if (state == PS_CROUCH)
|| ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DTILT)
{
    //walk-crawl
    var speed_limit = max(abs(hsp), crawl_speed);
    hsp = clamp(hsp + (right_down - left_down) * (ground_friction + crawl_accel), 
               -speed_limit, speed_limit);

    currently_crawling = true;
}
else if (state == PS_DASH_START) && down_down
{
    //dash-crawl
    if (right_down - left_down != 0) || (abs(hsp) > ground_friction)
    {
       state_timer = min(12, state_timer); //prevent transition to full PS_DASH

       var speed_limit = max(abs(hsp), dashcrawl_speed);
       hsp = clamp(hsp - (sign(hsp) * ground_friction) 
                       + (right_down - left_down) * (ground_friction + dashcrawl_accel),
                       -speed_limit, speed_limit);
    }

    currently_crawling = true;
}

//==============================================================
//hurtbox control
switch (state)
{
    case PS_CROUCH:
        hurtboxID.sprite_index = crouchbox_spr;
        break;
    case PS_DASH_START:
        hurtboxID.sprite_index = down_down ? crouchbox_spr : dashbox_spr;
        break;
    case PS_DASH:
    case PS_DASH_TURN:
        hurtboxID.sprite_index = dashbox_spr;
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
  //case PS_DEAD:
        break;
    default:
        hurtboxID.sprite_index = hurtbox_spr;
        break;
}

//==============================================================
// DAIR once-per-airtime
if (msg_dair_cooldown_override)
{
    if (!free || state_cat == SC_HITSTUN)
        msg_dair_cooldown_override = false;
    else
        move_cooldown[AT_DAIR] = max(move_cooldown[AT_DAIR], 5);
}

//==============================================================
// BSPECIAL "Last move used" detection
// if starting an attack: gets caught by set_attack (requires prev_attack)
var counts_as_hitpause = (hitpause) || ( (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
                                         && (attack == AT_NTHROW && window == 4) );

//One outcome per distinct special press
if (!at_prev_special_down && special_down) 
    at_fresh_special_down = true;

if (at_fresh_special_down && !msg_bspec_sketch_locked)
{
    var target = noone;
    var saved_move = -1;

    if (!special_down)
    {
        at_fresh_special_down = false;

        //released: save self's last move
        if (!special_pressed) //tolerates tap: does not remove bspec
        {
            target = self;
            saved_move = target.attack;
        }
    }
    else if (!counts_as_hitpause && at_was_in_hitpause)
    {
        //last frame of hitpause: steal target's last move
        target = instance_exists(hit_player_obj) ? hit_player_obj : self;
        saved_move = target.attack;
        at_fresh_special_down = false;
    }

    //save move info
    if instance_exists(target) && ( (msg_bspecial_last_move.target != target) 
                                 || (msg_bspecial_last_move.move != saved_move) )
                               && ! (target == self && 
                                      (saved_move == AT_DSPECIAL_2 || msg_is_bspecial) )
    {
        msg_bspecial_last_move.target = target;
        msg_bspecial_last_move.move = saved_move;
        msg_bspecial_last_move.small_sprites = target.small_sprites;

        if (target != self)
            sound_play(sound_get("eden3"));
        else sound_play(asset_get("mfx_change_color"));

        set_ui_element( UI_HUD_ICON, get_char_info( target.player, INFO_HUD));
        set_ui_element( UI_HUDHURT_ICON, get_char_info( target.player, INFO_HUDHURT));


        if (!target.msg_is_missingno || saved_move == AT_DSPECIAL_2 )
        {
            msg_construct_bspecial_start(target, saved_move); //starts copying
        }
        //otherwise: Missingnos can just reuse their own data, no copy
        else if (target.msg_is_missingno)
        {
            msg_bspec_effective_runeflags = target.msg_rune_flags;
        }

        msg_unsafe_effects.bad_vsync.impulse = 4;
        msg_unsafe_effects.bad_vsync.horz_max = 5;
        msg_unsafe_effects.shudder.impulse = 4;
        msg_unsafe_effects.shudder.horz_max = 5;
        msg_unsafe_effects.shudder.vert_max = 5;
    }
}

if (!msg_bspec_copying_status.done)
{
    if (msg_rune_flags.bspecial_amalgam) msg_construct_bspecial_step_AMALGAM();
                                    else msg_construct_bspecial_step();
}

at_prev_special_down = special_down;
at_was_in_hitpause = counts_as_hitpause;
if (attack != AT_DSPECIAL_2) at_prev_attack = attack;

//for bspecial input:
//requires spr_dir to have been "backwards" previously
//special case for WALKTURN and DASHTURN: they get the new spr_dir at the start of the turn
at_prev_spr_dir = (state == PS_WALK_TURN || state == PS_DASH_TURN) ? -spr_dir : spr_dir;

//walkturn prevents special input...
if (state == PS_WALK_TURN)
&& (is_special_pressed(DIR_LEFT) || is_special_pressed(DIR_RIGHT))
{
    set_attack(AT_FSPECIAL);
}

//==============================================================
// If this was true (from previous frame) and you were sent to hitstun, lose charge
if (msg_fspecial_is_charging)
{
    if (state_cat == SC_HITSTUN)
    { msg_fspecial_charge = 0; }
    else if (state == PS_WALL_JUMP) 
    {
        msg_fspecial_ghost_arrow_active = true;
        
        msg_unsafe_effects.shudder.impulse = 20;
        msg_unsafe_effects.bad_vsync.impulse = 20;
        msg_unsafe_effects.bad_vsync.horz_max = 8;
        sound_play(sound_get("krr"));
    }
}
msg_fspecial_is_charging = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
                            && ((attack == AT_FSPECIAL) && window < 3);

//bubble collective lockout update
for (var p = 0; p < array_length(msg_collective_bubble_lockout); p++)
{
    if (msg_collective_bubble_lockout[p] > 0)
    {
        msg_collective_bubble_lockout[p]--;
        if (msg_collective_bubble_lockout[p] == 0)
        {
            //reenable bubbles for target
            with (pHitBox) if (orig_player_id == other)
                           && (attack == AT_FSPECIAL_2) 
                           && (hbox_num == 2)
            {
                can_hit[p] = true;
            }
        }
    }
}
//==============================================================
//airtech glitch
if (msg_air_tech_active && !hitpause)
{
    var do_offset = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

    if (shield_down)// && down_down?
    {
        if (do_offset) y -= 80;
        vsp = 0; hsp = 0;

        with (obj_article_platform) if (client_id == other)
            external_should_die = true;

        var plat = instance_create(x, y, "obj_article_platform");
        plat.client_id = self;
        plat.die_condition = 2; //Groundedness
        set_state(PS_TECH_GROUND);
    }
    
    msg_air_tech_active = false;
}
//==============================================================
//passive charge glitch
if (msg_fstrong_interrupted_timer > 0)
{
    if (msg_rune_flags.fstrong_drain_charge)
    {
        msg_fstrong_interrupted_timer -= 0.02;
        strong_flashing = (msg_fstrong_interrupted_timer % 1 > 0.9);
    }
    else
    {
        msg_fstrong_interrupted_timer++;
        strong_flashing = (msg_fstrong_interrupted_timer % 10 > 5);
    }
}
//==============================================================
//stop tracking grab outcome selection if somehow no longer in grab
if  (msg_grab_selected_index != noone) &&
   (!(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
    || (attack != AT_NTHROW) || (window != 4))
{
    msg_grab_selected_index = noone;
    if (msg_grab_sfx != noone)
    {
        sound_stop(msg_grab_sfx);
    }
    msg_grab_selected_index = noone;
}
//==============================================================
//Leech Seed particle updates
for (var i = 0; i < msg_leechseed_particle_number; i++)
{
    var temp_part = msg_leechseed_particles[i];
    if (temp_part.timer > 0)
    {
        temp_part.timer--;
        if (temp_part.timer > 0)
        {
            //bezier curve math 
            //(1 - t) reversed because this counts down
            var norm_time = (1.0 * temp_part.timer)/msg_grab_leechseed_delay;
            var sq_time = norm_time * norm_time;
            var neg_sq_time = (1.0 - norm_time) * (1.0 - norm_time)

            temp_part.x = temp_part.mid_x 
                        + sq_time * (temp_part.source_x - temp_part.mid_x)
                        + neg_sq_time * (x - temp_part.mid_x);
            temp_part.y = temp_part.mid_y
                        + sq_time * (temp_part.source_y - temp_part.mid_y)
                        + neg_sq_time * (y - (char_height/2) - temp_part.mid_y);
        }
        else
        {
            take_damage(player, player, -1);
            sound_play(asset_get("mfx_hp"));
        }
    }
}
//==============================================================
// Explosion fakeout
if (msg_exploded_respawn)
{
    if (state == PS_RESPAWN) && (state_timer > 1)
    {
        //faster Respawn
        state_timer++;
    }
    else if !respawn_taunt
    {
        // Non-invincible after an explosion respawn
        msg_exploded_respawn = false;
        invincible = false;
        invince_time = 0;
    }
}

//==============================================================
// Coin charge
// USUALLY is immediately satisfied by UStrong's own hitbox.
if (msg_ustrong_coin_charge > 0)
{
    var best_hitbox = noone;
    with (pHitBox) if (type == 1 && orig_player_id == other)
                   && !(attack == AT_DSTRONG && hbox_num <= 2)
    {
        if (best_hitbox == noone)
        || (best_hitbox.hit_priority < hit_priority)
        {
            best_hitbox = self;
        }
    }

    if (best_hitbox != noone)
    {
        var true_angle = (360 + best_hitbox.kb_angle) % 360;
        if (best_hitbox.orig_player_id.spr_dir < 0) xor (best_hitbox.hit_flipper == 5)
            true_angle = (360 - (true_angle - 90) + 90) % 360;

        //simulated DI
        if (!joy_pad_idle) 
            true_angle += 15*dsin(angle_difference( joy_dir, true_angle));

        var num_coins = clamp(8 + msg_ustrong_coin_charge/10, 8, 64);
        var coinspeed = clamp(8 + 1 * (msg_ustrong_coin_charge/60.0), 8, 12);
        var hsp_base = lengthdir_x(coinspeed * 0.7, true_angle)
        var vsp_base = lengthdir_y(coinspeed, true_angle) - 2;

        msg_ustrong_coin_charge = 0;

        msg_blackhole_index = (msg_blackhole_index + 1) % array_length(msg_blackholes);
        msg_blackholes[msg_blackhole_index].x = 0;
        msg_blackholes[msg_blackhole_index].y = 0;
        msg_blackholes[msg_blackhole_index].n = 0;

        for (var i = 0; i < num_coins; i++)
        {
            var hb = create_hitbox(AT_USTRONG, 3, best_hitbox.x, best_hitbox.y);
            hb.hsp = hsp_base;
            hb.vsp = vsp_base;
            hb.update_cardinality = i%2; //for blackhole
            if (i != 0)
            {
                var spread = (i < 6 ? 1 : 1.5);
                hb.x += (random_func_2(2*i, 10, false) - 5);
                hb.hsp += (random_func_2(2*i, spread*2, false) - spread);
                hb.vsp += (random_func_2(2*i + 1, spread*2, false) - spread);
            }
        }
    }
}


//==============================================================
//Yoyo detection
if (msg_dstrong_yoyo.active)
{
    var best_hitbox = noone;
    with (pHitBox) if (type == 1 && orig_player_id == other)
                   && ("missingno_hitbox_is_copy_for" not in self 
                   ||  missingno_hitbox_is_copy_for != noone)
    {
        if (best_hitbox == noone)
        || (best_hitbox.hit_priority < hit_priority)
        {
            best_hitbox = self;
        }
    }

    //interpolate
    if (best_hitbox != noone)
    {
        var distance = point_distance(msg_dstrong_yoyo.x, msg_dstrong_yoyo.y, 
                                      best_hitbox.x, best_hitbox.y);

        var relative_x = (msg_dstrong_yoyo.x - x);
        var relative_y = (msg_dstrong_yoyo.y - y);

        var steps = distance / 25;

        var is_group_minus = best_hitbox.hbox_group < 0;

        for (var i = 0; i < steps; i++)
        {
            var factor = i/steps;
            var interp_hb = create_hitbox(best_hitbox.attack, best_hitbox.hbox_num, floor(x-30), floor(y));
            interp_hb.length = 1;
            interp_hb.image_xscale = lerp(0.15, best_hitbox.image_xscale, factor);
            interp_hb.image_yscale = lerp(0.15, best_hitbox.image_yscale, factor);
            interp_hb.x_pos = lerp(relative_x, best_hitbox.x_pos, factor);
            interp_hb.y_pos = lerp(relative_y, best_hitbox.y_pos, factor);
            interp_hb.missingno_hitbox_is_copy_of = best_hitbox;
            interp_hb.missingno_hitbox_is_copy_for = noone;
            if (is_group_minus) interp_hb.hbox_group = 0;
        }
        
        if (!msg_rune_flags.dstrong_persisting) //See death for removal
        {
            msg_dstrong_yoyo.active = false;
            msg_dstrong_yoyo.visible = false;
        }

        vfx_yoyo_snap.timer = 8;
        vfx_yoyo_snap.x = best_hitbox.x;
        vfx_yoyo_snap.y = best_hitbox.y;
        vfx_yoyo_snap.length = distance;
        vfx_yoyo_snap.angle = point_direction(best_hitbox.x, best_hitbox.y, 
                                             msg_dstrong_yoyo.x, msg_dstrong_yoyo.y);
    }

}

//========================================================
// wraparound glitch
if (msg_uspecial_wraparound)
{
    if (state == PS_RESPAWN || state == PS_DEAD)
    || (state_cat == PS_HITSTUN)
        msg_uspecial_wraparound = false;

    image_yscale = 0; //intangibility

    // 1-866-THX-SUPR
    var blastzone_t = get_stage_data(SD_TOP_BLASTZONE_Y);
    var blastzone_b = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
    if (y + vsp > blastzone_b - 12)
    {
        y = blastzone_t; 
        vsp = 0;
        msg_uspecial_wraparound_require_pratfall = true;
        attack_end();

        //any melee hitboxes that belong to me should be set to hit again
        with (pHitBox) if (player == other.player) && (type == 1)
        {
            for (var p = 0; p < array_length(can_hit); p++)
            { 
                can_hit[p] = true; 
            }
        }

        sound_play(asset_get("sfx_genesis_tv_static"));
        msg_uspecial_wraparound = false;
    }
}
else if (image_yscale == 0) image_yscale = 1;

//shrinks collider size if crawling
image_yscale = sign(image_yscale) * (currently_crawling ? 0.45 : 1);

if (msg_uspecial_wraparound_require_pratfall)
&& !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
    set_state(free ? PS_PRATFALL : PS_PRATLAND);
    msg_uspecial_wraparound_require_pratfall = false;
}

//========================================================
// glitched death
if (gfx_glitch_death_stack > 0)
&& (state == PS_RESPAWN && state_timer == 1)
{
    if (gfx_glitch_death_stack <= gfx_glitch_death_stack_max)
    {
        hsp = sign(gfx_glitch_death_position.x - x);
        vsp = sign(gfx_glitch_death_position.y - y);
        x = gfx_glitch_death_position.x;
        y = gfx_glitch_death_position.y;
        hitstun_full = 7;
        hitstun = 7;
        state = PS_HITSTUN;

        if (gfx_glitch_death_ends_match)
        && (gfx_glitch_death_stack == gfx_glitch_death_stack_max)
        {
            set_player_stocks(player, 0);
            end_match();
        }
    }
}

//=========================================================
// Rune: broken airdodge
if (msg_rune_flags.antidodge && state == PS_AIR_DODGE)
{
    //make yourself invincible for the duration and allow exiting the state
    if (!shield_down) state = PS_IDLE_AIR;
    else invincible = true;
}
//=========================================================
// Rune: rotated hurtbox
hurtboxID.image_angle = msg_rune_flags.tilted_hurtbox ? (spr_dir * 70) : 0;
// Rune: downscaled hurtbox
hurtboxID.image_yscale = msg_rune_flags.smaller_hurtbox ? 0.65 : 1;
//=========================================================
// Rune: parry-regrab
if (state == PS_PARRY) && (has_parried) && msg_rune_flags.dspecial_magicthrow
&& is_special_pressed(DIR_DOWN)
{
    move_cooldown[AT_NTHROW] = 0;
    set_attack(AT_DSPECIAL);
    hitpause = false;
    perfect_hitpause = false;
    hitstop = 0;
}
//=========================================================
// Rune: Projectile Immunity
if (attack_invince == 0) && (msg_rune_flags.proj_immunity)
    attack_invince = 2;
//=========================================================
// Rune: Post-dodge Immunity
if (free) && (msg_rune_flags.persist_dodge) &&(!has_airdodge)
{
    attack_invince = true;
}
//=========================================================
// Rune: Jump-Waveland
if (state == PS_WAVELAND) && (msg_rune_flags.wavebounce) 
{
    hsp = 10 * sign(hsp);
    vsp = -8;
    state = PS_FIRST_JUMP;
}
//=========================================================
// Rune: Camera-Teching
if (state == PS_HITSTUN) && (msg_rune_flags.camera_tech)
                         && (!hitpause && shield_pressed)
{
    var cambounds = { l:get_instance_x(asset_get("camera_obj")),
                      t:get_instance_y(asset_get("camera_obj")),
                      r:view_get_wview(), b:view_get_hview() }
    cambounds.l -= cambounds.r/2;
    cambounds.r += cambounds.l;
    cambounds.t -= cambounds.b/2;
    cambounds.b += cambounds.t;

    if (y < cambounds.b) && (y > cambounds.t)
    {
        if (hsp < 0) &&  (x > cambounds.l && x+hsp <= cambounds.l)
        {
            x = cambounds.l;
            hsp = 0; vsp = 0; spr_dir = 1;
            set_state(PS_WALL_TECH);
        }
        else if (hsp > 0) &&  (x < cambounds.r && x+hsp >= cambounds.r)
        {
            x = cambounds.r;
            hsp = 0; vsp = 0; spr_dir = -1;
            set_state(PS_WALL_TECH);
        }
    }
}
//=========================================================
// Rune: Direction Locking
if (msg_rune_flags.direction_lock)
{
    if (get_gameplay_time() < 5) msg_directionlock = spr_dir;
    else
    {
        spr_dir = msg_directionlock;
        
        if sign(right_down - left_down) == -sign(spr_dir)
        {
            if (state == PS_DASH_START)
            {
                hsp = -(currently_crawling ? 1.2 : moonwalk_accel)*dash_speed*spr_dir;
            }
            else if (state == PS_WALK_TURN)
            {
                hsp = clamp(hsp - sign(walk_accel)*(ground_friction+abs(walk_accel))*spr_dir, -walk_speed, walk_speed)
            }
        }
    }
}
//=========================================================
// Rune: Direction Immunity
if (msg_rune_flags.direction_immune)
{
    with (oPlayer) if (self != other)
    {
        var towards = (x - other.x);
        if (abs(towards) > 6) && (sign(towards) * spr_dir > 0)
        {
            can_be_hit[other.player] = max(can_be_hit[other.player], 2);
        }
    }
}
//==============================================================================
// Rune: SlowStart timer
if (msg_rune_flags.slow_start) && !msg_slowstart_ended
{
    if (get_gameplay_time() > 60*60*3)
    {
        request_stats_update = true;
        msg_slowstart_ended = true;

        //effects
        sound_play(sound_get("pmd_speed_up"), false, noone, 0.6, 1.07)

        for (var i = 0; i < 16; i++)
        {
            var k = spawn_hit_fx(floor(x - 60 + random_func_2(player+i+1, 120, true)),
                                 floor(y - random_func_2(player+i+5, 20, true) ), hfx_glitchtwinkle_long);
            k.image_yscale = (2 + random_func_2(player+i+3, 2, true));
            k.grav = -0.2 - 0.4 * random_func_2(player+i+7, 1, false);
            k.uses_shader = false;
            k.depth = depth - 1;
        }
    }
}
//=========================================================
// Rune: Taunt stun escape
if (msg_rune_flags.taunt_stuncancel) && taunt_pressed
&& (has_airdodge) && (state_cat == SC_HITSTUN) && !hitpause
{
    has_airdodge = false;
    set_state(PS_TUMBLE);
    clear_button_buffer(PC_TAUNT_PRESSED);
    sound_play(sound_get("shorthand"));
    if point_distance(0, 0, hsp, vsp) > 20
    {
        vsp *= 0.7; hsp *= 0.7;
    }
}
//=========================================================
// Rune: Flame Body
if (msg_rune_flags.flame_body) && (get_gameplay_time() % 5 == 0)
{
    create_hitbox(AT_JAB, 3, x, y-40);
}
//=========================================================
// Rune: DStrong Jumpcancel
if (msg_stored_dstrong && !strong_down)
{
    set_attack(AT_DSTRONG);
    set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
    window = 3; window_timer = 0;
    if (free) vsp = min(vsp, -3);
    msg_stored_dstrong = false;
}
//These two are independent storages, hehehehe
if (msg_stored_bspec_dstrong && !special_down)
{
    set_attack(AT_DSTRONG);
    set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
    window = 3; window_timer = 0;
    if (free) vsp = min(vsp, -3);
    msg_stored_bspec_dstrong = false;
}
//=======================================================
// Rune: persistent superarmor
if (attack == AT_DATTACK) && (msg_rune_dattack_persistent_armor)
{
    soft_armor = max(24, soft_armor);
    hitpause_shock = true;
}
//=======================================================
// Rune: wraparound
if (msg_rune_flags.horizontal_wraparound)
{
    var blastzone_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
    var blastzone_l = get_stage_data(SD_LEFT_BLASTZONE_X);
    if (x + hsp > blastzone_r - 12)
    && (blastzone_r != blastzone_l)
    {
        x = blastzone_l + 2;
        attack_end();
        sound_play(asset_get("sfx_genesis_tv_static"));
    }
    else if (x + hsp < blastzone_l + 12)
    && (blastzone_r != blastzone_l)
    {
        x = blastzone_r - 2;
        attack_end();
        sound_play(asset_get("sfx_genesis_tv_static"));
    }
}

//Compat specific
//==============================================================================
//Kirby
if (swallowed && instance_exists(enemykirby))
{
    while (!msg_bspec_copying_status.done)
    {
        if (msg_rune_flags.bspecial_amalgam) msg_construct_bspecial_step_AMALGAM();
                                        else msg_construct_bspecial_step();
    }

    var temp = 0;
    var move = (msg_bspecial_last_move.target == noone) ? AT_NSPECIAL 
             : (msg_bspecial_last_move.target.msg_is_missingno ? msg_bspecial_last_move.move : AT_DSPECIAL_2);
    var hitboxes = get_num_hitboxes(move);
    var windows = clamp(get_attack_value(move, AG_NUM_WINDOWS), 0, 30);
    with (enemykirby) set_num_hitboxes(AT_EXTRA_3, hitboxes);

    for (var i = 0; i < 100; i++)
    {
        //base attack attributes
        temp = get_attack_value(move, i);
        //sanity limits
        if (i == AG_CATEGORY) { temp = 2; } //Always allow usage
        else if (i == AG_NUM_WINDOWS) { temp = clamp(temp, 0, 30); }

        if (temp != 0) with (enemykirby) set_attack_value(AT_EXTRA_3, i, temp);

        //window data
        for (var w = 0; w <= windows; w++)
        {
            temp =  get_window_value(move, w, i);
            //softlock prevention: no looping windows
            if (i == AG_WINDOW_TYPE) { temp = (temp == 9 ? 0 : (temp == 10 ? 8 : temp)) }
            else if (i == AG_WINDOW_LENGTH) { temp = clamp(temp, 0, 60) }

            if (temp != 0) with (enemykirby) set_window_value(AT_EXTRA_3, w, i, temp);
        }
        //hitbox data
        for (var h = 0; h <= hitboxes; h++)
        {
            temp = get_hitbox_value(move, h, i);
            if (i == HG_HITBOX_Y || i == HG_HITBOX_X)
            { temp = clamp(temp, -500, 500) }

            if (temp != 0)  with (enemykirby) set_hitbox_value(AT_EXTRA_3, h, i, temp);
        }
    }
    enemykirby.newicon = sprite_get("cmp_stadium_back");
    swallowed = false;

    //clears BSPEC entirely
    at_prev_attack = AT_TAUNT;
    msg_bspecial_last_move.target = noone;
    msg_bspecial_last_move.move = at_prev_attack;
    msg_bspecial_last_move.small_sprites = 0;
    msg_bspec_sketch_locked = false;
    set_ui_element( UI_HUD_ICON, get_char_info( player, INFO_HUD));
    set_ui_element( UI_HUDHURT_ICON, get_char_info(  player, INFO_HUDHURT));
}

//intercept Kirby-Pokeballs to make them behave normally
var pokeball_sprite = sprite_get("proj_pokeball");
with (pHitBox) if (type == 2 && !orig_player_id.msg_is_missingno)
               && (sprite_index == pokeball_sprite)
{
    missingno_copied_player_id = player_id;
    can_hit[player_id.player] = false;
    can_hit_self = true;

    msg_runeflag_noflush = false;
    msg_runeflag_control = false;
    msg_proj_should_slide = false;
    initial_hsp = hsp;
    initial_vsp = vsp;

    orig_player_id = other;
    player_id = other;
    orig_player = player_id.player;
    player = player_id.player;
    my_team = get_player_team(player);

    attack = AT_NSPECIAL;
}


//=========================================================
//banishment (can't be done in init sadly)
if (msg_can_banish_cheater)
   && msg_is_online && !get_match_setting(SET_TEAMS)
   && ((is_player_on(1) + is_player_on(2) + is_player_on(3) + is_player_on(4)) == 2)
   && taunt_down && shield_down && (get_gameplay_time() < 5) //implied but you never know
{
    msg_banish_cheater_to_purgatory = true;
    msg_alt_startup = 153;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_construct_bspecial_start(target_id, target_move) // Version 0
    // start stealing the move.
    msg_bspec_copying_status.done = false;
    //save the target (MIGHT STOP EXISTING! WAT DO)
    msg_bspec_copying_status.tgt = target_id;
    msg_bspec_copying_status.move = target_move;
    msg_bspec_copying_status.index = 0;

    move_cooldown[AT_DSPECIAL_2] = 9; //estimated safe copytime

    var num_hitboxes = 0;

    //collect some info to start off
    with (target_id)
    {
        num_hitboxes = clamp(get_num_hitboxes(target_move), 0, 30);
    }
    set_num_hitboxes(AT_DSPECIAL_2, num_hitboxes);

    var temp = 0;

    //Move's main Indexes
    for (var i = 0; i < 100; i++)
    {
        with (target_id) { temp = get_attack_value(target_move, i); }
        //sanity limits
        if (i == AG_CATEGORY) { temp = 2; } //Always allow usage
        else if (i == AG_NUM_WINDOWS) { temp = clamp(temp, 0, 30); }

        if (temp != 0 || !msg_rune_flags.bspecial_amalgam)
            set_attack_value(AT_DSPECIAL_2, i, temp);
    }

#define msg_construct_bspecial_step // Version 0
    if (msg_bspec_copying_status.index >= 32)
    || !instance_exists(msg_bspec_copying_status.tgt)
    {
        msg_bspec_copying_status.done = true;
        return; //nothing left to do
    }

    //one steal step; 8th of the buffer
    var winval = 0;
    var hitval = 0;

    var LOOP_SIZE = 2;
    for (var k = 0; k < LOOP_SIZE; k++)
    {
        var the_index = msg_bspec_copying_status.index + k;
        var move = msg_bspec_copying_status.move;

        for (var i = 0; i < 100; i++)
        {
            with (msg_bspec_copying_status.tgt)
            { winval = get_window_value(move, the_index, i);
              hitval = get_hitbox_value(move, the_index, i); }

            //softlock prevention: no looping windows
            if (i == AG_WINDOW_TYPE)
            { winval = winval == 9 ? 0 : (winval == 10 ? 8 : winval) }
            else if (i == AG_WINDOW_LENGTH)
            { winval = clamp(winval, 0, 60) }
            set_window_value(AT_DSPECIAL_2, the_index, i, winval);

            if (i == HG_HITBOX_Y || i == HG_HITBOX_X)
            { hitval = clamp(hitval, -500, 500) }
            else if msg_rune_flags.bspecial_copies_wrong
                     && ( (i == HG_WINDOW)
                        ||(i == HG_WINDOW_CREATION_FRAME)
                        ||(i == HG_LIFETIME)
                        ||(i == HG_BASE_KNOCKBACK)
                        ||(i == HG_BASE_HITPAUSE) )
            { hitval++; }
            set_hitbox_value(AT_DSPECIAL_2, the_index, i, hitval);
        }
    }

    msg_bspec_copying_status.index += LOOP_SIZE;
    msg_bspec_copying_status.done = msg_bspec_copying_status.index >= 32;

#define msg_construct_bspecial_step_AMALGAM // Version 0
    // THIS variant of the function does not copy over data that is zero.
    // see Rune: AMALGAM.

    if (msg_bspec_copying_status.index >= 32)
    || !instance_exists(msg_bspec_copying_status.tgt)
    {
        msg_bspec_copying_status.done = true;
        return; //nothing left to do
    }

    //one steal step; 8th of the buffer
    var winval = 0;
    var hitval = 0;

    var LOOP_SIZE = 2;
    for (var k = 0; k < LOOP_SIZE; k++)
    {
        var the_index = msg_bspec_copying_status.index + k;
        var move = msg_bspec_copying_status.move;

        for (var i = 0; i < 100; i++)
        {
            with (msg_bspec_copying_status.tgt)
            { winval = get_window_value(move, the_index, i);
              hitval = get_hitbox_value(move, the_index, i); }

            if (winval != 0)
            {
                //softlock prevention: no looping windows
                if (i == AG_WINDOW_TYPE)
                { winval = winval == 9 ? 0 : (winval == 10 ? 8 : winval) }
                else if (i == AG_WINDOW_LENGTH)
                { winval = clamp(winval, 0, 60) }
                set_window_value(AT_DSPECIAL_2, the_index, i, winval);
            }

            if (hitval != 0)
            {
                if (i == HG_HITBOX_Y || i == HG_HITBOX_X)
                { hitval = clamp(hitval, -500, 500) }
                else if msg_rune_flags.bspecial_copies_wrong
                     && ( (i == HG_WINDOW)
                        ||(i == HG_WINDOW_CREATION_FRAME)
                        ||(i == HG_LIFETIME)
                        ||(i == HG_BASE_KNOCKBACK)
                        ||(i == HG_BASE_HITPAUSE) )
                { hitval++; }
                set_hitbox_value(AT_DSPECIAL_2, the_index, i, hitval);
            }
        }
    }

    msg_bspec_copying_status.index += LOOP_SIZE;
    msg_bspec_copying_status.done = msg_bspec_copying_status.index >= 32;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion