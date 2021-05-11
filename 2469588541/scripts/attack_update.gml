//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_DSPECIAL:
    case AT_USPECIAL:
        trigger_b_reverse();
        break;
}

switch (attack)
{
    case AT_TAUNT:
        if (practice&&object_index!=oTestPlayer)
        {
            if (state_timer == 1 && menuState == 0) menuStateBuffer = 1;
            hsp = 0;
            vsp = 0;
        }
        if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer = 0;
        break;
        
    case AT_NSPECIAL:
        switch (window)
        {
            case 1:
                nspecCharge = 0;
                break;
            case 2:
                if (!special_down)
                {
                    if (window_timer != get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)-1) sound_play(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX));
                    window_timer = 0;
                    window = 3;
                }
                else
                    nspecCharge++;
                break;
            case 3:
                if (window_timer == 1 && !hitpause)
                {
                    var shootOne = true;
                    if (has_rune("N"))
                    {
                        var star = instance_create(x,y-30,"obj_article1");
                        star.state = 1;
                        star.newState = 1;
                    }
                    if (!ShootStar(1)) ShootStar(0);
                }
                break;
            case 4:
                if (window_timer == 2 && nspecCharge >= 12)
                {
                    window_timer = 0;
                    window = 3;
                    nspecCharge -= 6;
                    sound_play(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX));
                }
                break;
        }
        can_jump = ((window == 3 && window_timer > 2) || window >= 4) && !was_parried;
        break;

    case AT_FSPECIAL:
        can_fast_fall = false;
        switch (window)
        {
            case 1:
                hasMovedUp = false;
                if (has_hit_player && !hit_player_obj.super_armor)
                {
                    if (hitpause) Grab(30, 0, 3, 3);
                    else
                    {
                        set_attack(AT_FSPECIAL_2);
                        CorrectHurtboxes();
                    }
                }
                else if (window_timer == 9)
                {
                    var uwu = spawn_hit_fx(x, y-36, shinestar_effect); uwu.depth = -10;
                    sound_play(asset_get("mfx_star"));
                    if (was_parried) window = 5;
                }
                else if (window_timer == 1) sound_play(asset_get("sfx_blink_dash"));
                break;

            case 2:
                if (window_timer == 1) afterImageTimer = 6;
                if (has_hit_player && !hit_player_obj.super_armor && hit_player_obj.hitpause) Grab(64, 0, 3, 3);
                if (!hitpause || (has_rune("E") && has_hit_player))
                {
                    if (has_hit)
                    {
                        destroy_hitboxes();
                        window = has_rune("E")?1:3;
                        window_timer = 0;
                        vsp = 0;
                        hsp = 0;
                        afterImageTimer = 0;
                    }
                    LedgeSnap();
                }
                break;

            case 3:
                if (window_timer <= 6)
                    vsp = 0;
                break;

            case 4:
                if (window_timer == 6 && !free) hsp = -8*spr_dir;
                can_jump = has_hit && !was_parried;
                can_wall_jump = true;
                break;
        }
        break;

    case AT_USPECIAL:
        var uspecSpeed = 29;
        can_move = false;
        switch(window)
        {
            case 1:
                if (window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1)
                {
                    hasMovedUp = false;
                    uspecTimes = 0;
                    reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
                    uspecDir = USpecDir();
                    if (uspecDir == -1) uspecDir = 90;
                    USpecInit();
                    uspecResources = {djump:djumps, airdodge:has_airdodge, walljump:has_walljump};
                }
                break;
            case 2:
                USpecRemoveResources();
                if (!hitpause)
                {
                    if (!free) uspecLanded = true;
                    hsp = lengthdir_x(uspecSpeed, uspecDir);
                    vsp = lengthdir_y(uspecSpeed, uspecDir);
                    var uwu = spawn_hit_fx(x, y-floor(char_height/2), startrail_effect); uwu.spr_dir = spr_dir;
                    LedgeSnap();
                }
                break;
            case 3:
                USpecRemoveResources();
                if (window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)-1)
                {
                    var tempUspecDir = uspecDir;
                    uspecDir = USpecDir();
                    if (uspecDir != -1 && (tempUspecDir != uspecDir || has_rune("J")) && uspecTimes < (has_rune("J")?3:2))
                    {
                        window = 2;
                        window_timer = 0;
                        USpecInit();
                        sound_play(sound_get("pew"));
                    }
                }
                break;
            case 4:
                if (window_timer == 1 && (uspecLanded || !free || (has_rune("F") && has_hit_player)))
                {
                    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
                }
                break;
        }
        break;

    case AT_DSPECIAL:
        fast_falling = false;
        do_a_fast_fall = false;
        move_cooldown[attack] = 2;
        if (window_timer == 1)
        {
            with(asset_get("obj_article1")) if (player_id == other.id && state == 1 && point_distance(x, y, other.x, other.y-floor(other.char_height/2)) < other.dspecRadius+32)
            {
            	var len = point_distance(x, y, other.x, other.y-100);
            	var dir = point_direction(x, y, other.x, other.y-100);
                hsp = lengthdir_x(len/3, dir);
                vsp = lengthdir_y(len/3, dir);
                checkMerge = true;
            }
        }
        else if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
        {
            if (has_rune("O")) with (oPlayer) if (other.player != player && get_player_team(player) != get_player_team(other.player) && state_cat == SC_HITSTUN && point_distance(x, y, other.x, other.y) < other.dspecRadius+32)
            {
                var uwu = spawn_hit_fx(x, y-floor(char_height/2), 305); uwu.depth = -10;
            	x = other.x;
                y = other.y - 115;
                hsp = 0;
                vsp = 0;
                old_hsp = 0;
                old_vsp = -1;
                hitpause = true;
                hitstop = 30;
                hitstip_full = 30;
                other.hsp = 0;
                other.vsp = -4;
                sound_play(asset_get("mfx_star"));
                uwu = spawn_hit_fx(x, y-floor(char_height/2), 305); uwu.depth = -10;
            }
        }
        break;
        
    case AT_DAIR:
        if (window == 1) dairTimes = 0;
        else if (!hitpause)
        {
    	    if (window == 2 && window_timer == 6
                || window == 3 && window_timer == 2
                || window == 3 && window_timer == 8)
    	    	sound_play(asset_get("sfx_swipe_medium1"));
        }
        break;
        
    case AT_FSTRONG:
        ConstellationBonus(attack, 1);
        break;
        
    case AT_DSTRONG:
        ConstellationBonus(attack, 1);
        break;
        
    case AT_USTRONG:
        ConstellationBonus(attack, 1);
        ConstellationBonus(attack, 2);
        break;
        
    case AT_UAIR:
        ConstellationBonus(attack, 1);
        ConstellationBonus(attack, 2);
        break;
}

#define USpecDir()
{
    if (joy_pad_idle) return -1;
    return point_direction(0, 0, right_down-left_down, down_down-up_down)
}

#define USpecInit()
{
    uspecLanded = !free;
    uspecPos = {x:x, y:y};
    ++uspecTimes;
}

#define USpecRemoveResources()
{
    djumps = uspecResources.djump;
    has_airdodge = uspecResources.airdodge;
    has_walljump = uspecResources.walljump;
}

#define NearestOpponentDir()
{
    var nearest = noone;
    var tempDist = -1;
    with (oPlayer) if (other.player != player && get_player_team(player) != get_player_team(other.player) && ((other.spr_dir==1?x>other.x:x<other.x) || abs(x-other.x) < 128))
    {
        var dist = point_distance(x, y, other.x, other.y);
        if (nearest == noone || tempDist > dist)
        {
            tempDist = dist;
            nearest = self;
        }
    }
    return nearest;
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
	if (xsmooth != 0)
	{
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.hsp = 0;
		hit_player_obj.old_hsp = 0;
	}
	if (ysmooth != 0)
	{
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.vsp = 0;
		hit_player_obj.old_vsp = 0;
	}
}

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}

#define LedgeSnap()
{
    if (!hasMovedUp && free && place_meeting(x+hsp,y,asset_get("par_block"))) for (var i = 0; i < 20; ++i) if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
    {
        y -= i;
        hasMovedUp = true;
        break;
    }
}

#define ConstellationBonus(_attack, _hboxNum)
{
    var noOfStars = StarCount();
    reset_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(_attack, _hboxNum, HG_DAMAGE);
    set_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING,   KBMult(get_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING), noOfStars));
    set_hitbox_value(_attack, _hboxNum, HG_DAMAGE,              DamageBonus(get_hitbox_value(_attack, _hboxNum, HG_DAMAGE), noOfStars));
}

#define StarCount()
{
    var noOfStars = 0;
    with(asset_get("obj_article1")) if (player_id == other.id && state == 1)
    {
    	noOfStars += isBig+1;
    }
    return noOfStars;
}

#define KBMult(_kb, _noOfStars)
{
    return _kb * 1+(_noOfStars*starKB/100);
}

#define DamageBonus(_damage, _noOfStars)
{
    return _damage + _noOfStars*starDamage;
}

#define ShootStar(_big)
{
    var success = false;
    with(asset_get("obj_article1")) if (player_id == other.id && state == 1 && (_big^^!isBig) && point_distance(x, y, other.x, other.y) < (isBig?128:96))
    {
        var opponent = noone;
        var baseSpeed = has_rune("G")?60:30;
        with (other) opponent = NearestOpponentDir();
        if (opponent == noone)
        {
            hsp = other.spr_dir * (baseSpeed+other.nspecCharge*2);
            vsp = 0;
        }
        else
        {
            var dir = point_direction(x, y, opponent.x + opponent.hsp*4, opponent.y-floor(opponent.char_height/2) + opponent.vsp*4);
            hsp = lengthdir_x(baseSpeed+other.nspecCharge*2.5, dir);
            vsp = lengthdir_y(baseSpeed+other.nspecCharge*2.5, dir);
        }
        newState = 4;
        ignores_walls = true;
        checkMerge = false;
        other.tutDone[1] = true;
        if (other.upThrow > 50) other.tutDoneAdv[1] = true;
        sound_play(asset_get("sfx_boss_shine"));
        success = true;
        break;
    }
    return success;
}