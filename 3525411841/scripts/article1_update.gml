// Article 1 -- Player Cursor
//image_index = owner - 1;
image_blend = get_player_hud_color(owner);
if (!initialized)
{
    /*with (oPlayer)
    {
        if (other.owner == player)
        {
            other.icon_sprite = get_char_info(player, INFO_OFFSCREEN);
            // check for vanilla characters
            if (!is_string(url))
            {
                if (url < 24)
                    other.img_index = url - 1;
            }
        }
    }
    var sprite = instance_create(x, y, "obj_stage_article", 3);
    sprite.sprite_index = icon_sprite;
    sprite.image_index = img_index;
    sprite.depth = -10;
    sprite.xOffset = 26;
    sprite.yOffset = 26;
    sprite.owner = owner;*/
    initialized = true;
    
    held_item_sprite = instance_create(x, y, "obj_stage_article", 3);
    held_item_sprite.sprite_index = asset_get("empty_sprite");
    held_item_sprite.grid_size = 32;
    held_item_sprite.owner = owner;
}

// disable cursor if no item to build
if (selected_item = -1 && obj_stage_main.current_stage_state == 1)
    enabled = false;
if (enabled)
{
with (oPlayer)
{
    if (other.owner == player)
    {
        if (!joy_pad_idle)
        {
            other.x += dcos(joy_dir) * other.cursor_speed;
            other.y += -dsin(joy_dir) * other.cursor_speed;
        }
        // disables cursor if it is a cpu player or player has no stocks
        if (temp_level != 0 || get_player_stocks(player) <= 0)
        {
            other.enabled = false;
        }
        if (!other.input_special && special_down)
        {
            if (obj_stage_main.current_stage_state == 1)
            {
                other.held_item_direction = other.held_item_direction == 1 ? -1 : 1;
                sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
            }
            other.input_special = true;
        }
        else if (!special_down)
            other.input_special = false;
            
        if (!other.input_parry && shield_down)
        {
            if (obj_stage_main.current_stage_state == 1)
            {
                other.held_item_rotation += 90;
                if (other.held_item_rotation >= 360)
                {
                    other.held_item_rotation = 0;
                }
            }
            other.input_parry = true;
            sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
        }
        else if (!shield_down)
            other.input_parry = false;
            
        // Prevents springs and wrecking balls from being rotated
        // (Springs can be rotated in the original game, but I'm lazy)
        if (other.selected_item == 18 || other.selected_item == 21)
        {
            if (other.held_item_rotation != 0)
            {
                sound_play(asset_get("mfx_tut_fail"), false, noone, 1, 1);
                other.held_item_rotation = 0;
            }
        }
    };
    /* old code using dust
    //var dust = spawn_dust_fx(other.x, other.y, get_char_info(player, INFO_OFFSCREEN), 1);
    var dust = draw_sprite_ext(other.x, other.y, get_char_info(player, INFO_OFFSCREEN), 1);
    // check for vanilla characters
    if (!is_string(url))
    {
        if (url < 24)
            dust.image_index = url - 1;
    }
    dust.image_xscale /= 2;
    dust.image_yscale /= 2;*/
    
    //draw_sprite_ext(get_char_info(player, INFO_OFFSCREEN), img_index, other.x, other.y, 1, 1, 0, 16777215, 1);
}

    // make sure cursor stays within bounds
    var boundsA = is_aether_stage() ? 7 : 3;
    var boundsB = is_aether_stage() ? 6 : 2;
    if (x > get_marker_x(boundsA))
        x = get_marker_x(boundsA);
    if (y < get_marker_y(boundsA))
        y = get_marker_y(boundsA);
        
    if (x < get_marker_x(boundsB))
        x = get_marker_x(boundsB);
    if (y > get_marker_y(boundsB))
        y = get_marker_y(boundsB);
    if (selected_item <= 0)
    {
        held_item_sprite.sprite_index = noone;
    }
    else
    {
        held_item_sprite.sprite_index = sprite_get(obj_stage_main.item_sprites[selected_item]);
        
        held_item_sprite.spr_dir = held_item_direction;
        held_item_sprite.image_angle = held_item_rotation
    }
    //set_view_position(x, y);
}
else
{
    y = 10000;
}
with (oPlayer)
{
    if (other.owner == player)
    {
        other.clicked = attack_pressed;
    }
}
//obj_stage_main.player_cursors[player - 1] = enabled;
//print_debug(string(obj_stage_main.player_cursors[player - 1]));