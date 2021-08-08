#macro AS_SPAWN         0
#macro AS_IDLE          1
#macro AS_RETURN        2
#macro AS_DESPAWN       3
if (newState != state) SetArticleState(newState);
draw_angle = angle;

if (!instance_exists(leaderObj) || leaderObj == noone || leaderObj.state == AS_DESPAWN)
{
    var newLeader = noone;
    with (obj_article1) if (player_id == other.player_id && returning && (newLeader == noone || newLeader.index > index)) newLeader = self;
    leaderObj = (newLeader==noone?self:newLeader);
}

switch (state)
{
    case AS_SPAWN:
        hsp = lengthdir_x(shootSpeed, angle);
        vsp = lengthdir_y(shootSpeed, angle);

        AntiCheat();
        if (hbox == noone)
        {
            hbox = create_hitbox(AT_NSPECIAL_2, 1, x, y);
            hbox.spr_dir = hsp==0?1:sign(hsp);
        }
        hbox.x = x+hsp;
        hbox.y = y+vsp;

        if (state_timer >= startupTime) SetArticleState(returning?AS_IDLE:AS_DESPAWN);
        break;
    case AS_IDLE:
        if (hbox != noone)
        {
            if (instance_exists(hbox))
                hbox.destroyed = true;
            hbox = noone;
        }
        hsp = 0;
        vsp = 0;
        if (state_timer > 1 && player_id.state_cat == SC_HITSTUN) state_timer--;
        if (state_timer+offsetTimer >= idleTime-30 && state_timer % 5 == 0) x += state_timer%2==0?-4:4;
        if (state_timer+offsetTimer >= idleTime)
        {
            SetArticleState(AS_RETURN);
            sound_play(asset_get("sfx_swipe_medium1"));
            snowflakeTime = 0;
        }
        
        with (asset_get("pHitBox"))
        {
            if (collision_circle(x, y, 32, other.id, 0, 0)
        		&& other.player != player
        		&& other.state != 2
        		&& damage > 0
                && effect != 9
        		&& hit_priority > 0
        		&& get_player_team(player) != get_player_team(other.player))
        	{
                with (other)
                {
                    var uwu = spawn_hit_fx(x, y, 302);
                    uwu.spr_dir = hsp==0?1:sign(hsp);
                    uwu.depth = depth+1;
                    SetArticleState(AS_DESPAWN);
                }
            }
        }
        break;
    case AS_RETURN:
        var coords = {x:player_id.x+fspecReturn*player_id.spr_dir*40, y:player_id.y-floor(player_id.char_height/2)};
        if (smash && player_id.hit_player_obj != noone)
            coords = {x:player_id.hit_player_obj.x, y:player_id.hit_player_obj.y};
        else if (player_id.flake.isOut && !fspecReturn)
            coords = {x:player_id.flake.x, y:player_id.flake.y};
        if (state_timer == 1 || !player_id.flake.isOut || fspecReturn)
        {
            angle = point_direction(x, y, coords.x, coords.y);
            hsp = lengthdir_x(returnSpeed, angle);
            vsp = lengthdir_y(returnSpeed, angle);
        }
        
        AntiCheat();
        if (hbox == noone)
        {
            hbox = create_hitbox(AT_NSPECIAL_2, 2, x, y);
            var leaderHsp = lengthdir_x(1, point_direction(leaderObj.x, leaderObj.y, player_id.x+fspecReturn*player_id.spr_dir*40, player_id.y-floor(player_id.char_height/2)));
            hbox.spr_dir = (leaderHsp==0)?1:sign(leaderHsp);
            if (fspecReturn) hbox.damage = 2;
        }
        hbox.x = x+hsp;
        hbox.y = y+vsp;

        if (player_id.flake.isOut && !fspecReturn && !smash)
        {
            if (snowflakeTime == 0)
            {
                if (point_distance(x, y, coords.x, coords.y) < 30) snowflakeTime = state_timer+4;
            }
            else if (state_timer > snowflakeTime)
            {
                player_id.flake.isOut = false;
                with (obj_article1) if (player_id == other.player_id && leaderObj == other.leaderObj) SetArticleState(AS_IDLE);
            }
        }
        else if (point_distance(x, y, coords.x, coords.y) < 30)
        {
            SetArticleState(AS_DESPAWN);
            player_id.tutDone[1] = true;
        }
        break;
    case AS_DESPAWN:
        if (hbox != noone)
        {
            if (instance_exists(hbox))
                hbox.destroyed = true;
            hbox = noone;
        }
        if (state_timer >= dieTime)
        {
            sound_play(asset_get("sfx_ice_end"));
            instance_destroy();
            exit;
        }
        break;
}

// Animation
if (state_timer % animSpeed == 0 && state_timer != 0)
{
    ++image_index;
}

++state_timer;

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
            sprite_index = sprite_get("nspecialCharge");
            animSpeed = 1;
            break;
    }
}

#define AntiCheat()
{
    if (hbox != noone && !instance_exists(hbox))
    {
        hbox = create_hitbox(AT_NSPECIAL_2, state==AS_SPAWN?1:2, x, y);
        sound_play(sound_get("vineboom"));
        spawn_hit_fx(x, y, player_id.moyai_effect);
        print("...");
    }
}