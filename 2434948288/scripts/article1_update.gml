#macro AS_IDLE      0
#macro AS_OUT       1
#macro AS_FSPEC     2
#macro AS_USPEC     3
#macro AS_DAIR      4
#macro AS_NSPEC     5
#macro AS_DSPEC     6
#macro AS_DISAPPEAR 7

// Check despawn
if (replacedCount > maxArticles && state != AS_DESPAWN) isDespawn = true;
if (newState != state) SetArticleState(newState);

// Update
for (var i = 0; i < 10; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;
x = clamp(x, 0, room_width);
ignores_walls = false;
switch (state)
{
    case AS_IDLE:
        var partX = player_id.x + player_id.hsp*-2 + defaultPos.x*player_id.spr_dir;
        var partY = player_id.y + player_id.vsp*-2 + defaultPos.y;
        hsp = (partX - x)/moveSpeed;
        vsp = (partY - y)/moveSpeed;
        spr_dir = 1;
        break;
    case AS_DISAPPEAR:
        var dist = point_distance(x,y,player_id.x,player_id.y-20);
        if (state_timer == 0)
        {
            if (!noHit)
            {
                var pos = {x:x, y:y};
                for (var i = 0; i < dist/32; ++i)
                {
                    create_hitbox(AT_EXTRA_1, 1, pos.x, pos.y);
                    pos.x -= round(32*(x-player_id.x)/dist);
                    pos.y -= round(32*(y-(player_id.y-20))/dist);
                }
            }
            for (var i = 0; i < 10; ++i)
            {
                afterImage[i]={x:lerp(x, player_id.x, i/10),y:lerp(y, player_id.y-20, i/10),spr_dir:spr_dir,alpha:i+5};
            }
        }
        x = player_id.x;
        y = player_id.y - 20;
        hsp = 0;
        vsp = 0;
        spr_dir = 1;
        sprite_index = asset_get("no_sprite");
        if (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR)
            SetArticleState(AS_IDLE);
        break;
    case AS_OUT:
        SlowDown();
        spr_dir = 1;
        
	    if (player_id.attack == AT_DAIR && player_id.state == PS_ATTACK_AIR && (player_id.window == 2 || player_id.window == 3)) with (player_id) if (point_distance(x,y,other.x,other.y) < 50)
	    {
	    	other.newState = 4;
	    	old_hsp = 0;
	    	old_vsp = -6;
            hitpause = true;
            hitstop = 10;
            hitstop_full = 10;
	    	window = 5;
	    	window_timer = 0;
	    	move_cooldown[AT_DAIR] = 30;
            tutDoneAdv[1] = true;
            sound_play(asset_get("sfx_blow_medium2"));
            var owo = spawn_hit_fx(x, y, 303); owo.hit_angle = 270;
	    }
        break;
    case AS_FSPEC:
        vsp = 0;
        if (state_timer < 10)
        {
            if (state_timer == 0) spr_dir = player_id.spr_dir;
            hsp = -1 * spr_dir;
        }
        else if (state_timer < 40)
        {
            if (state_timer == 10) sound_play(asset_get("sfx_spin"));
            hsp = 6 * spr_dir;
            create_hitbox(AT_FSPECIAL, 1, x+hsp*2, y);
            if (image_index == 9) image_index = 7;
            animSpeed = 3;
        }
        else if (state_timer < 60)
        {
            if (state_timer == 40)
            {
                animSpeed = 4;
                image_index = 10;
                var owo = create_hitbox(AT_FSPECIAL, 2, x+hsp*2, y); owo.spr_dir = spr_dir;
            }
            hsp /= 1.1;
        }
        else if (state_timer == 60)
        {
            SetArticleState(AS_OUT);
        }
        break;
    case AS_DAIR:
        hsp = 0;
        spr_dir = 1;
        if (state_timer < 10)
        {
            vsp = 2;
        }
        else if (state_timer < 20)
        {
            if (state_timer == 10) sound_play(asset_get("sfx_spin"));
            vsp = 8;
            create_hitbox(AT_FSPECIAL, 1, x, y);
            if (image_index == 9) image_index = 7;
            animSpeed = 2;
        }
        else if (state_timer < 40)
        {
            if (state_timer == 20)
            {
                animSpeed = 4;
                image_index = 10;
                create_hitbox(AT_FSPECIAL, 2, x, y);
            }
            vsp /= 1.1;
        }
        else if (state_timer == 40)
        {
            SetArticleState(AS_OUT);
        }
        break;
    case AS_USPEC:
        ignores_walls = true;
        if (state_timer == 0)
            uspecPos = {x:player_id.x, y:player_id.y + 50};
        else if (state_timer == 8)
            SetArticleState(AS_OUT);
        else if (state_timer == 7)
        {
            x = uspecPos.x;
            y = uspecPos.y;
        }
        hsp = (uspecPos.x - x)/moveSpeed;
        vsp = (uspecPos.y - y)/moveSpeed;
        spr_dir = 1;
        break;
    case AS_DSPEC:
        if (state_timer == 0)
            uspecPos = {x:player_id.x + 60 * player_id.spr_dir, y:player_id.y - 150};
        else if (state_timer == 8)
            SetArticleState(AS_OUT);
        else if (state_timer == 7)
        {
            x = uspecPos.x;
            y = uspecPos.y;
        }
        hsp = (uspecPos.x - x)/moveSpeed;
        vsp = (uspecPos.y - y)/moveSpeed;
        spr_dir = 1;
        break;
    case AS_NSPEC:
        if (state_timer == 0)
        {
            var owo = spawn_hit_fx(x, y, player_id.nspec); owo.depth = -10;
            sound_play(sound_get("guitar"));
        }
        else if (state_timer == 6)
        {
			hsp = player_id.joy_pad_idle?0:lengthdir_x(5, player_id.joy_dir);
			vsp = player_id.joy_pad_idle?0:lengthdir_y(5, player_id.joy_dir);
            player_id.tutDoneAdv[4] = !player_id.joy_pad_idle;
            create_hitbox(AT_NSPECIAL, 1, x, y);
        }
        else if (state_timer == 12)
            SetArticleState(AS_OUT);
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
        case AS_FSPEC:
            sprite_index = sprite_get("fspecGuitar");
            animSpeed = 2;
            break;
        case AS_DAIR:
            sprite_index = sprite_get("fspecGuitar");
            animSpeed = 2;
            break;
        case AS_NSPEC:
            sprite_index = sprite_get("nspecGuitar");
            animSpeed = 6;
            break;
        default:
            sprite_index = sprite_get("guitarIdle");
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