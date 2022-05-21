#macro AS_SPAWN         0
#macro AS_IDLE          1
#macro AS_TELEPORT      2
#macro AS_RECEIVE       3
#macro AS_DESPAWN       4
#macro AS_TELE_OTHER    5

// Check despawn
if (replacedCount > maxArticles && state != AS_DESPAWN) isDespawn = true;
if ("in_adventure" in player_id && player_id.in_adventure && instance_exists(obj_stage_main.room_manager) && obj_stage_main.room_manager.room_switch_on) isDespawn = true;
if (newState != state) SetArticleState(newState);

// Update
var otherPortalTemp = otherPortal;
otherPortal = noone;
with(asset_get("obj_article1")) if (player_id == other.player_id && self != other && !isDespawn && replacedCount <= maxArticles) other.otherPortal = self;
if (otherPortalTemp != otherPortal) SetSprites();
for (var i = 0; i < 8; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;
if (!safeZone && ((y > ceil(room_height/5) && y < floor(2*room_height/3) && x > ceil(room_width/6) && x < floor(5*room_width/6)) || noLimit)) safeZone = true;

var tele = true;
if (!player_id.canTele) with(asset_get("obj_article1")) if (player_id == other.player_id && IsPlayerInPortal()) tele = false;
player_id.canTele = tele;

articleInit = true;


if (hitpause > 0)
{
    --hitpause;
    if (hitpause <= 0)
    {
        hsp = old_hsp;
        vsp = old_vsp;
    }
}
else
{
    SlowDown();
    CheckCollision();
    
    switch (state)
    {
        case AS_SPAWN:
            if (isDespawn)
    	    {
                SetArticleState(AS_DESPAWN);
            }
            else if (state_timer >= 10)
    	    {
                ignores_walls = true;
    	        SetArticleState(AS_IDLE);
    	    }
            break;
    
        case AS_IDLE:
            if (isDespawn)
    	    {
                SetArticleState(AS_DESPAWN);
            }
            else
            {
                if (player_id.canTele && IsPlayerInPortal() && otherPortal != noone
                    && ((player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR) || player_id.attack != AT_FSPECIAL))
                {
                    SetArticleState(AS_TELEPORT);
                    with (otherPortal) SetArticleState(AS_RECEIVE);
                }
                else if (otherPortal != noone && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL && player_id.state_timer == 1)
                {
                    SetArticleState(AS_TELE_OTHER);
                }
            }
            break;
    
        case AS_TELEPORT:
    	    if (state_timer >= 6)
    	    {
    	        //SetArticleState(AS_DESPAWN);
    	        SetArticleState(AS_IDLE);
    	    }
            else if (state_timer == 1)
            {
                player_id.x+=otherPortal.x-x;
                player_id.y+=otherPortal.y-y;
                player_id.x+=hsp;
                player_id.y+=vsp;
                player_id.canTele = false;
                player_id.teleFlash = 16;
                if ("in_adventure" in player_id && player_id.in_adventure && !player_id.invincible)
                {
                    player_id.invincible = true;
                    player_id.invince_time = 5;
                }
            }
            break;
    
        case AS_RECEIVE:
    	    if (state_timer >= 6)
    	    {
    	        //SetArticleState(AS_DESPAWN);
    	        SetArticleState(AS_IDLE);
    	    }
            break;
    
        case AS_DESPAWN:
            if (state_timer == dieTime)
            {
                instance_destroy();
                exit;
            }
            break;
    
        case AS_TELE_OTHER:
    	    if (state_timer >= 6)
    	    {
    	        SetArticleState(AS_IDLE);
                with (oPlayer) if ("teleLonin" in self && teleLonin == other.player_id.player)
                    teleLonin = noone;
    	    }
            else if (state_timer == 1)
            {
                var selfRef = self;
                with (pHurtBox) if (get_player_team(player) != get_player_team(other.player_id.player) && place_meeting(x,y,other.id)) with (oPlayer) if (other.player == player && "teleLonin" in self && teleLonin == noone && !clone)
                {
                    teleLonin = selfRef.player_id.player;
                    afterImageLonin = {sprite:sprite_index,image:image_index,xPos:x,yPos:y,dir:spr_dir,small:small_sprites,alpha:30,lonin:teleLonin};
                    x+=selfRef.otherPortal.x-selfRef.x;
                    y+=selfRef.otherPortal.y-selfRef.y;
                    has_airdodge = true;
                    has_walljump = true;
                    hsp *= 0.75;
                    vsp *= 0.75;
                    with (selfRef.player_id)
                    {
                        sound_play(sound_get("shing"));
                        if (has_rune("C")) take_damage(other.player, player, 9);
                        if (has_rune("G")) {other.hitpause = true; other.hitstop = 60; other.old_hsp = other.hsp; other.old_vsp = other.vsp;};
                    }
                }
            }
            break;
    }
    
    // Animation
    if (state_timer % animSpeed == 0 && state_timer != 0)
    {
        ++image_index;
    }
    
    ++state_timer;
}

#define SetArticleState(_state)
{
    newState = _state;
    state = _state;
    state_timer = 0;
    image_index = 0;
    hsp = 0;
    vsp = 0;
    SetSprites();
}

#define SetSprites()
{
    // change sprite and anim rate
    switch (state)
    {
        case AS_SPAWN:
            sprite_index = sprite_get("portalSpawn");
            break;
            animSpeed = 10;
            break;
        case AS_DESPAWN:
            sprite_index = sprite_get("portalDespawn");
            animSpeed = 4;
            break;
        case AS_TELE_OTHER:
            sprite_index = sprite_get("portalMed");
            break;
        case AS_RECEIVE:
        case AS_TELEPORT:
            sprite_index = sprite_get("portalDark");
            break;
        default:
            sprite_index = sprite_get(replacedCount==1?"portalLight":"portal");
            animSpeed = 6;
            break;
    }
}

#define IsMoving()
{
    return abs(hsp) + abs(vsp) > 0.1;
}

#define SlowDown()
{
    if (IsMoving())
    {
        hsp = hsp/1.1;
        vsp = vsp/1.1;
    }
    else
    {
        hsp = 0;
        vsp = 0;
    }
}

#define CheckCollision()
{
    var canMove = true;
    var moveAdj = 2;
    if (collision_circle(x,y,collideDist,asset_get("solid_32_obj"),false,true))
    {
        hsp = lengthdir_x(-moveAdj, moveAngle);
        vsp = lengthdir_y(-moveAdj, moveAngle);
        canMove = false;
    }
    else if (!noLimit && y < ceil(room_height/5))
    {
        if (safeZone)
        {
            if (nspecAngle != -621 && !player_id.joy_pad_idle)
            {
                hsp = 0;
                vsp = 0;
            }
            else vsp = -vsp;
            y = ceil(room_height/5);
        }
        else
        {
            vsp = moveAdj;
        }
        moveAngle = 270;
        canMove = false;
    }
    else if (!noLimit && y > floor(2*room_height/3))
    {
        if (safeZone)
        {
            if (nspecAngle != -621 && !player_id.joy_pad_idle)
            {
                hsp = 0;
                vsp = 0;
            }
            else vsp = -vsp;
            y = floor(2*room_height/3);
        }
        else
        {
            vsp = -moveAdj;
        }
        moveAngle = 90;
        canMove = false;
    }
    else if (!noLimit && x < ceil(room_width/6))
    {
        if (safeZone)
        {
            if (nspecAngle != -621 && !player_id.joy_pad_idle)
            {
                hsp = 0;
                vsp = 0;
            }
            else hsp = -hsp;
            x = ceil(room_width/6);
        }
        else
        {
            hsp = moveAdj;
        }
        moveAngle = 0;
        canMove = false;
    }
    else if (!noLimit && x > floor(5*room_width/6))
    {
        if (safeZone)
        {
            if (nspecAngle != -621 && !player_id.joy_pad_idle)
            {
                hsp = 0;
                vsp = 0;
            }
            else hsp = -hsp;
            x = floor(5*room_width/6);
        }
        else
        {
            hsp = -moveAdj;
        }
        moveAngle = 180;
        canMove = false;
    }
    else
    {
        with (obj_article1) if (player_id == other.player_id && id != other.id && point_distance(x,y,other.x,other.y) < 124 && !isDespawn)
        {
            var ang = point_direction(x,y,other.x,other.y);
            other.hsp = lengthdir_x(moveAdj, ang);
            other.vsp = lengthdir_y(moveAdj, ang);
            other.moveAngle = ang;
            canMove = false;
        }
    }

    if (canMove && nspecAngle != -621 && !player_id.joy_pad_idle && safeZone)
    {
        hsp = lengthdir_x(nspecSpeed, nspecAngle);
        vsp = lengthdir_y(nspecSpeed, nspecAngle);
        moveAngle = nspecAngle;
        SetEmptyAfterImage({x:x, y:y, alpha:8});
        canMove = false;
    }
    nspecAngle = -621;

    if (canMove && state == AS_IDLE && !IsMoving() && safeZone)
    {
        with (asset_get("pHitBox"))
        {
            if (place_meeting(x,y,other.id)
        		&& player != other.player_id.player
                && !player_id.hitpause)
        	{
                var hitAdj = 14;
                other.old_hsp = lengthdir_x(hitAdj, kb_angle)*spr_dir;
                other.old_vsp = lengthdir_y(hitAdj, kb_angle);
                other.moveAngle = kb_angle;
        		if (type == 1)
        		{
                    var tempHitpause = ceil(hitpause/2);
        			player_id.hitpause = true;
        			player_id.hitstop = tempHitpause;
        			player_id.hitstop_full = tempHitpause;
        			player_id.old_hsp = player_id.hsp;
        			player_id.old_vsp = player_id.vsp;
        			player_id.hsp = 0;
        			player_id.vsp = 0;
        			player_id.hit_player = false;
                    other.hsp = 0;
                    other.vsp = 0;
                    other.hitpause = tempHitpause;
        		}
                else
                {
                    other.hsp = other.old_hsp;
                    other.vsp = other.old_vsp;
                    other.hitpause = 0;
                }
            	sound_play(sound_effect);
        		var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
        		fx.draw_angle = kb_angle;
        		fx.spr_dir = spr_dir;
            }
        }
    }
}
#define IsPlayerInPortal()
{
    return point_distance(x,y+player_id.char_height/2,player_id.x,player_id.y)<triggerDist;
}

#define SetEmptyAfterImage(_afterImage)
{
    for (var i = 0; i < 8; ++i) if (afterImage[i] == -1 || afterImage[i].alpha <= 0)
    {
        afterImage[i] = _afterImage;
        break;
    }
}