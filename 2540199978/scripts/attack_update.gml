//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_USPECIAL)
    trigger_b_reverse();

switch (attack)
{
    case AT_TAUNT:
        if (practice&&object_index!=oTestPlayer)
        {
            if (state_timer == 1)
            {
                if (menuState == 0 && !shield_down)
                    menuStateBuffer = 1;
                else
                {
                    tutDone[tutPrevMenu] = 1;
                    tutDoneAdv[tutPrevMenu] = 1;
                }
            }
            hsp = 0;
            vsp = 0;
        }
        if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer--;
        break;

    case AT_EXTRA_1:
        can_jump = true;
        if (state_timer == 1) spawn_base_dust(x, y-floor(char_height/2), "anime", spr_dir);
        if (taunt_down && !jump_pressed) window_timer = 0;
        else sound_stop(sound_get("boa"));
        break;

    case AT_NSPECIAL:
        ++nspecCharge;
        if (nspecCharge%(15*nspecChargeMax/75)==0 && window < 3) sound_play(asset_get("sfx_ice_on_player"));
        fall_through = down_down;
		if (down_down && !freemd && !free) free = true;
        switch (window)
        {
            case 1:
                if (window_timer == 1) sound_play(asset_get("sfx_ice_ftilt"));
                if (!special_down)
                {
                    set_attack(AT_NSPECIAL_2);
                    CorrectHurtboxes();
                }
                break;
            case 2:
                can_shield = true;
                can_jump = true;
                if (!free && state_timer%12 == 0) spawn_base_dust(x-spr_dir*20, y, "wavedash", spr_dir);
                if ((!special_down && state_timer > (nspecChargeMax+10)/5) || nspecCharge > nspecChargeMax+10)
                {
                    window = 3;
                    window_timer = 0;
                }
                break;
            case 3:
                if (window_timer == 1 && nspecCharge > nspecChargeMax+10) sound_play(asset_get("sfx_may_arc_cointoss"));
                can_shield = true;
                can_jump = true;
                if (special_pressed)
                {
                    if (left_down ^^ right_down)
                        spr_dir = -left_down + right_down;
                    set_attack(AT_NSPECIAL_2);
                    CorrectHurtboxes();
                }
                break;
        }
        break;

    case AT_NSPECIAL_2:
        switch (window)
        {
            case 1:
                nspecFree = free;
                nspecFiring = max(GetNoOfIcicles(), 1);
                nspecFired = 0;
                nspecLeaderObj = noone;
                break;
            case 2:
                if (window_timer == 1) nspecCharge = 0;
                var angle = (window_timer-2)*7;
                if (spr_dir == -1) angle = 180 - angle;
                if (nspecFree) angle *= -1;
                if (window_timer % 2 == 0 && nspecFired < nspecFiring)
                {
                    SpawnIcicle(x+50*spr_dir, y-32, nspecFiring, angle);
                    ++nspecFired;
                }
                break;
        }
        break;

    case AT_FSPECIAL:
        if (state_timer == 1)
        {
            reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE);
            has_hit_player = false;
            fspecGrabbedObj = noone;
        }
        else if (state_timer == 4)
        {
            CorrectHurtboxes();
            spawn_hit_fx(x, y-floor(char_height/2), 28);
		    visible = true;
		    sound_play(asset_get("sfx_ice_fspecial_hit_ground"));
        }
        if (window < 3)
        {
            if (has_hit_player)
            {
                if (hitpause && fspecGrabbedObj != noone && fspecGrabbedObj.last_player == player && fspecGrabbedObj.last_attack == attack)
                {
                    Grab(40, 0, 3, 3);
                    if (get_gameplay_time() % 2 == 0)
                    {
                    	var angle = random_func(0, 360, 0);
                    	var dist = random_func(1, 20, 0)-40;
                    	var p = spawn_hit_fx(fspecGrabbedObj.x+lengthdir_x(dist, angle), fspecGrabbedObj.y+lengthdir_y(dist, angle), particle);
                    	p.depth = depth-1;
                    }
                }
            }
            else if (!hitpause)
            {
                hsp = visible?((window==1?10:4) * spr_dir):0;
                if (window == 2 && window_timer <= 6 && flake.isOut && point_distance(x+40*spr_dir, y-35, flake.x, flake.y) < 64 && get_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE) != 1)
                {
                    hitpause = true;
                    hitstop = 12;
                    hitstop_full = 12;
                    hsp = 0;
                    vsp = 0;
                    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
                    sound_play(asset_get("sfx_blow_medium1"));
		            sound_play(sound_get("flakeIce"));
                    spawn_hit_fx(x+40*spr_dir, y-35, 302);
			        if (grabDjump && djumps >= 1)
			        {
			        	--djumps;
			        	grabDjump = false;
			        }
                }
            }
            else
            {
                flake.x += ((x + spr_dir * 40) - flake.x)/3;
                flake.y += ((y - 35) - flake.y)/3;
                tutDoneAdv[1] = true;
            }
            if (hitpause)
            {
                can_fast_fall = false;
                can_move = false;
            }
        }
        if (window == 4)
        {
            can_wall_jump = true;
            can_jump = has_hit&&!was_parried;
            tutDone[2] = true;
        }
        break;

    case AT_DSPECIAL:
        can_fast_fall = false;
        switch (window)
        {
            case 1:
                if (window_timer == 1)
                    sound_play(asset_get(flake.isOut?"sfx_orca_snow_evaporate":"sfx_orca_snow_mouth"));
                break;
            case 2:
                hsp /= 2;
                vsp /= 4;
                if (state_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)+1)
                {
                    flake.isOut = !flake.isOut;
                    if (flake.isOut)
                    {
                        flake.vsp = 15;
                        flake.hsp = 0;
                    }
                    else
                    {
                        move_cooldown[AT_DSPECIAL] = 60;
                        tutDone[0] = true;
                    }
                }
                if (((flake.isOut && special_down) || state_timer < 13) && state_timer < 50)
                {
                    flake.hsp += (-left_down+right_down)*1.5;
                    flake.hsp = clamp(flake.hsp, -15, 15);
                    flake.vsp -= 1;
                }
                else
                {
                    window = 3;
                    window_timer = 0;
                    if (flake.isOut)
                    {
                        flake.hsp = 0;
                        flake.vsp = 0;

                        var nearestPlayer = noone;
                        var nearestDist = 0;
                        with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
                        {
                            var tempDist = point_distance(other.flake.x, other.flake.y, x, y-floor(char_height/2));
                            if (nearestPlayer == noone || tempDist < nearestDist)
                            {
                                nearestDist = tempDist;
                                nearestPlayer = self;
                            }
                        }
                        if (nearestDist < 100 && nearestPlayer != noone)
                        {
                            flake.x += (nearestPlayer.x-flake.x)/3;
                            flake.y += ((nearestPlayer.y-floor(nearestPlayer.char_height/2))-flake.y)/3;
                        }

                        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, (flake.x-x)*spr_dir);
                        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, flake.y-y);
                        create_hitbox(AT_DSPECIAL, 1, 0, 0);
                        spawn_hit_fx(flake.x, flake.y, 302);
                        spawn_base_dust(flake.x, flake.y, "flake");
                        sound_play(asset_get("sfx_ice_shatter"));
                    }
                }
                break;
            case 3:
                if (window_timer == 1 && has_hit_player)
                    GiveCharge(2);
                if (flake.isOut && is_special_pressed(DIR_DOWN))
                {
                    sound_play(asset_get("sfx_orca_snow_evaporate"));
                    flake.isOut = false;
                    move_cooldown[AT_DSPECIAL] = 60;
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    tutDoneAdv[0] = true;
                }
                break;
        }
        break;

    case AT_USTRONG:
        if (state_timer == 1)
        {
            reset_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START);
            ustrongLoop = 0;
        }
        if (window == 2 || window == 3) draw_indicator = false;
        if (window == 4 && window_timer == 1) sound_play(asset_get("sfx_blow_heavy1"),0,-4,0.3);
        if (window == 3 && window_timer == get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH)-1)
        {
            ++ustrongLoop;
            window_timer = 0;
            if (ustrongLoop == 3) set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
            else if (ustrongLoop > 3) window = 4;
        }
        break;

    case AT_FSTRONG:
        if (window == 2 && window_timer == 1)
        {
            spawn_base_dust(x-spr_dir*10, y, "dash_start", spr_dir);
        }
        break;

    case AT_FTILT:
        if (window == 2 && window_timer == 1)
            spawn_base_dust(x, y, "dash", spr_dir);
        break;

    case AT_UTILT:
        if (window == 3 && window_timer == 1)
            spawn_base_dust(x+spr_dir*50, y, "dash", -spr_dir);
        break;

    case AT_DATTACK:
        if (window == 2 && !hitpause && window_timer%4 == 0)
            create_hitbox(AT_DATTACK, 1, 0, 0);
        if (window < 3 && !hitpause && window_timer%4 == 0)
            spawn_base_dust(x-spr_dir*20, y, "dash", spr_dir);
        if (window == 3 && window_timer == 1)
            spawn_base_dust(x+spr_dir*60, y, "walk", -spr_dir);
        break;

    case AT_DTILT:
        down_down = true;
        move_cooldown[AT_DTILT] = 1;
        if (window == 2 && window_timer == 1)
            spawn_base_dust(x-spr_dir*20, y, "dash", spr_dir);
        break;

    case AT_UAIR:
        if (state_timer == 4) sound_play(asset_get("sfx_swipe_heavy2"));
        if (window >= 2) draw_indicator = false;
        break;

    case AT_JAB:
        move_cooldown[AT_JAB] = 2;
        switch (window)
        {
            case 1:
                if (state_timer == 1) jabLag = 0;
                clear_button_buffer(PC_ATTACK_PRESSED);
                break;
            case 2:
                if (!hitpause)
                {
                    if (state_timer%3 == 1) create_hitbox(AT_JAB, 1, 0, 0);
                    if (state_timer%6 == 0) sound_play(asset_get("sfx_swipe_medium1"));
                    if (state_timer%10 == 0) spawn_base_dust(x-spr_dir*16, y, "dash", spr_dir);
                    else if (state_timer > 5)
                    {  
                        ++jabLag;
                        if (attack_down || attack_pressed) jabLag = 0;
                        if (jabLag > (has_hit?3:10) || was_parried)
                        {
                            window = 3;
                            window_timer = 0;
                            was_parried = false;
                        }
                        can_attack = true;
                    }
                }
                break;
            case 3:
                can_attack = true;
                break;
        }
        break;

    case AT_USPECIAL:
        var halfHeight = 48;
        can_move = false;
        can_fast_fall = false;
        free = true;
        switch (window)
        {
            case 1:
                uspecTarget = false;
                reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
                if (uspecGround) set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
                if (!special_down) uspecHeld = false;
                break;
            case 2:
                if (window_timer == 1 && flake.isOut && uspecHeld)
                {
                    uspecTarget = true;
                    uspecAngle = point_direction(x, y-floor(char_height/2), flake.x, flake.y);
                    set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
                }
                if (uspecTarget)
                {
                    var tempAngle = uspecAngle-90;
                    if (tempAngle > 180) tempAngle-=360;
                    spr_angle += (tempAngle-spr_angle)/4;
                    draw_x = -lengthdir_y(halfHeight, spr_angle);
                    draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
                    hurtboxID.sprite_index = sprite_get("uspec_hurt2");
                }
                break;
            case 3:
                var angle = uspecTarget?uspecAngle:90;
                if (window_timer == 1 && !hitpause)
                {
                    var dist = (uspecTarget&&!uspecGround)?20:25;
                    hsp = lengthdir_x(dist, angle);
                    vsp = lengthdir_y(dist, angle);

                    if (uspecTarget && flake.isOut)
                    {
                        with (obj_article1) if (player_id == other.id && state == 1 && returning) newState = 2;
                    }
                    else spawn_hit_fx(x, y-floor(char_height/2), boost_effect);
                }
                if (uspecTarget)
                {
                    spr_angle = angle-90;
                    if (spr_angle > 180) spr_angle-=360;
                    draw_x = -lengthdir_y(halfHeight, spr_angle);
                    draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
                    hurtboxID.sprite_index = sprite_get("uspec_hurt2");
                }
                if (!hitpause) create_hitbox(AT_USPECIAL, 1, 0, 0);
                break;
            case 4:
                if (window_timer == 1)
                {
                    hsp /= 4;
                    vsp /= 4;
                }
            case 5:
            case 6:
                uspecBan = !uspecGround;
                if (uspecTarget)
                {
                    spr_angle -= spr_angle/2;
                    draw_x = -lengthdir_y(halfHeight, spr_angle);
                    draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
                    hurtboxID.sprite_index = sprite_get("uspec_hurt2");
                    tutDone[3] = true;
                }
                if (window_timer == get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH)-1 && window == 6)
                {
                    if (uspecGround) move_cooldown[AT_USPECIAL] = 8;
                    if (left_down ^^ right_down) spr_dir = -left_down + right_down;
                    if (!hitpause) for (var i = 1; i <= 7; ++i)
                    {
                        var icebreak = instance_create(x, y, "obj_article3");
                        icebreak.sprite_index = sprite_get("iceBreak");
                        icebreak.image_index = i-1;
                        icebreak.dieTime = random_func_2(2+5*i, 4, 0)+8;
                        icebreak.hsp = random_func_2(3+5*i, 4, 0)-2+hsp*1.2;
                        icebreak.vsp = random_func_2(4+5*i, 4, 0)-2+vsp*1.2;
                    }
                }
                break;
        }
        break;
}

#define SpawnIcicle(_x, _y, _nspecFiring, _angle)
{
	var icicle = instance_create(_x, _y, "obj_article1");
	icicle.angle = _angle;
    icicle.returning = _nspecFiring==5;
    icicle.offsetTimer = window_timer;
    if (nspecLeaderObj == noone) nspecLeaderObj = icicle;
    icicle.leaderObj = nspecLeaderObj;
    if (get_player_color(player) == 6)
    {
        icicle.tint = TransIcicleTint();
    }
    icicle.index = nspecFired+1;
    if (aura > 0) icicle.smash = true;
    sound_play(asset_get("sfx_swipe_medium1"));
    return icicle;
}

#define TransIcicleTint()
{
    switch (nspecFired)
    {
        case 0:
        case 4:
            return make_colour_rgb(85, 205, 252);
        case 1:
        case 3:
		    return make_colour_rgb(247, 168, 223);
        default:
            return c_white;
    }
}

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}

#define GetNoOfIcicles()
{
    return clamp(floor((nspecCharge-10)/(nspecChargeMax/5)), 0, 5);
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
    if (xsmooth != 0)
    {
        fspecGrabbedObj.x += ((x + spr_dir * xpos) - fspecGrabbedObj.x)/xsmooth;
        fspecGrabbedObj.hsp = 0;
        fspecGrabbedObj.old_hsp = 0;
    }
    if (ysmooth != 0)
    {
        fspecGrabbedObj.y += ((y + ypos) - fspecGrabbedObj.y)/ysmooth;
        fspecGrabbedObj.vsp = 0;
        fspecGrabbedObj.old_vsp = 0;
    }
}

#define GiveCharge(_stacks)
{
    repeat(_stacks)
    {
        nspecCharge = max(nspecCharge, 11);
        nspecCharge += nspecChargeMax/5;
    }
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
{
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
        case "anime": dlen = 1; dfx = 22; dfg = 2656; dust_color = 1; break;
        case "flake": dlen = 1; dfx = 14; dfg = 2656; dust_color = 1; break;
    }
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = dfa;
    return newdust;
} // Supersonic