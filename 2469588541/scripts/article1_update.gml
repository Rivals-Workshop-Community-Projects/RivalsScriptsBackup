#macro AS_SPAWN         0
#macro AS_IDLE          1
#macro AS_DESPAWN       2
#macro AS_CONSTELLATION 3
#macro AS_NSPEC         4
if (newState != state) SetArticleState(newState);
depth = isBig?0:-5;
SlowDown();

switch (state)
{
    case AS_SPAWN:
        if (state_timer >= startupTime) SetArticleState(AS_IDLE);
        break;
    case AS_IDLE:
        with (asset_get("pHitBox"))
		{
		    if (place_meeting(x,y,other.id)
				&& other.player != player
				&& other.state != 2
				&& !other.isDespawn
				&& damage > 0
                && effect != 9
				&& hit_priority > 0
				&& get_player_team(player) != get_player_team(other.player))
			{
				//can_hit[other.player] = false;
		    	//sound_play(sound_effect);
				//var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
				//fx.draw_angle = kb_angle;
				//fx.spr_dir = spr_dir;
                other.isDespawn = true;
		    }
		}
        if (isDespawn) SetArticleState(AS_DESPAWN);
        else if (checkMerge)
        {
            if (point_distance(0, 0, hsp, vsp) < 1)
            {
                checkMerge = false;
                with(asset_get("obj_article1")) if (other != self && player_id == other.player_id && !other.isBig && !isBig && state == 1 && !isDespawn && checkMerge && point_distance(x, y, other.x, other.y) < 64)
                {
                    other.isBig = true;
                    isDespawn = true;
                    player_id.tutDone[2] = true;
                }
                if (isBig) SetSprites();
            }
        }
        else
        {
            with (asset_get("obj_article1")) if (player_id == other.player_id && other != self && point_distance(x,y,other.x,other.y) < (isBig?32:16) && state == AS_IDLE)
            {
                var ang = point_direction(x,y,other.x,other.y);
                other.hsp += lengthdir_x(0.5, ang);
                other.vsp += lengthdir_y(0.5, ang);
            }
        }
        break;
    case AS_CONSTELLATION:
        hsp = 0;
        vsp = 0;
        if (state_timer >= constellationTime) SetArticleState(AS_DESPAWN);
        break;
    case AS_NSPEC:
        ignores_walls = true;
        var dist = point_distance(0, 0, hsp, vsp);
        if (dist < 5 || place_meeting(x, y, asset_get("plasma_field_obj"))) SetArticleState(AS_DESPAWN);
        for (var i = 0; i < floor(dist); i+=12)
        {
            var owo = create_hitbox(AT_NSPECIAL, 2+isBig, floor(x+hsp-i*hsp/dist), floor(y+vsp-i*vsp/dist));
            owo.spr_dir = hsp==0?1:sign(hsp);
        }
        var uwu = spawn_hit_fx(x, y, player_id.startrail_effect); uwu.spr_dir = hsp==0?1:sign(hsp);
        uwu.depth = depth+1;
        break;
    case AS_DESPAWN:
        if (state_timer >= dieTime + replacedCount)
        {
            var uwu = spawn_hit_fx(x, y, 302); uwu.spr_dir = hsp==0?1:sign(hsp);
            uwu.depth = depth+1;
            sound_play(sound_get("break"));
            if (isBig && isDespawn)
            {
                isBig = false;
                isDespawn = false;
                SetArticleState(AS_IDLE);
            }
            else
            {
                instance_destroy();
                exit;
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

#define SlowDown()
{
    ignores_walls = point_distance(0, 0, hsp, vsp) > 10;
    hsp /= isBig?1.05:1.1;
    vsp /= isBig?1.05:1.1;
}

#define SetArticleState(_state)
{
    newState = _state;
    state = _state;
    state_timer = 0;
    image_index = 0;
    SetSprites();
}

#define SetSprites()
{
    // change sprite and anim rate
    switch (state)
    {
        default:
            sprite_index = sprite_get(isBig?"bigstar":"star2");
            animSpeed = 6;
            break;
        case AS_NSPEC:
            sprite_index = sprite_get(isBig?"bigstarshot":"starshot");
            animSpeed = 2;
            break;
    }
}