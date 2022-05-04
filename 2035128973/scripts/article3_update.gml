#macro AS_GROUNDIDLE    0
#macro AS_MARK          1
#macro AS_GROUNDDESPAWN 2

if (player_id.boneObj != id) newState = AS_GROUNDDESPAWN;
if (newState != state) SetArticleState(newState);

image_angle += angle_difference(0, image_angle)*0.1;
if (ignores_walls && !free && abs(angle_difference(0, image_angle)) < 1) ignores_walls = false;

switch (state)
{
    case AS_MARK:
        if (!instance_exists(player_id.boneMark) || player_id.boneMark.state == PS_RESPAWN || player_id.boneMark.state == PS_DEAD || ((player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && player_id.hit_player_obj == player_id.boneMark))
        {
            player_id.boneObj = noone;
            instance_destroy();
            exit;
        }
        x = player_id.boneMark.x;
        y = player_id.boneMark.y;
    case AS_GROUNDIDLE:
        if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)
        {
            var a = 0;
            with (player_id) a = get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH);   
            if (player_id.attack == AT_USPECIAL_2 && player_id.window == 3 && a != 6)
            {
                player_id.boneObj = noone;
                instance_destroy();
                exit;
            }
            if (state == AS_GROUNDIDLE && player_id.attack == AT_FSPECIAL && player_id.window == 1 && player_id.window_timer == 6 && !player_id.special_down && point_distance(x,y,player_id.x,player_id.y)<70)
            {
			    player_id.tutDone[3] = 1;
                player_id.window = 5;
                player_id.boneObj = noone;
                instance_destroy();
                exit;
            }
        }
	    if (state == AS_GROUNDIDLE)
        {
            if (place_meeting(x, y, asset_get("plasma_field_obj")))
            {
	    	    sound_play(asset_get("sfx_clairen_hit_med"));
	    	    spawn_hit_fx(floor(x),floor(y),256);
                player_id.boneObj = noone;
                instance_destroy();
                exit;
            }
            else
            {
                with (pHitBox) if (player_id == other.player_id && !was_parried && attack == AT_NSPECIAL && hbox_num == 2 && sprite_index == asset_get("empty_sprite") && place_meeting(x, y, other))
                {
                    var owo = create_hitbox(AT_USPECIAL, 1, x, floor(y));
                    owo.hsp = hsp*0.7;
                    owo.vsp = -5;
	    	        sound_play(asset_get("sfx_ori_energyhit_weak"));
                    player_id.boneObj = noone;
                    player_id.tutDone[6] = 1;
                    instance_destroy();
                    exit;
                }
            }
	    }
        break;
    case AS_GROUNDDESPAWN:
        if (state_timer > dieTime)
        {
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
            sprite_index = sprite_get("bone");
            animSpeed = 1;
            break;
        case AS_GROUNDDESPAWN:
            sprite_index = sprite_get("boneDespawn");
            animSpeed = 3;
            break;
        case AS_MARK:
            sprite_index = asset_get("empty_sprite");
            animSpeed = 1;
            break;
    }
}