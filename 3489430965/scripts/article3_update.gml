timer++;

var col_chicken = instance_place(x, y, asset_get("obj_article1"));
if(col_chicken != noone && col_chicken.player_id == player_id && !col_chicken.cooked)
{
    with(col_chicken)
    {
        sprite_index = sprite_get("chicken_cooked");
        image_index = 0;
        
        if(other.variant == 0)
        {
            spr_dir = other.spr_dir;
        }
        else if(x >= other.x)
        {
            spr_dir = 1;
        }
        else
        {
            spr_dir = -1;
        }
        cooked = true;
        hsp = 0;
        vsp = 0;
        hit_wait = 20;
        shake_camera(12, 20);
        sound_play(asset_get("sfx_zetter_fireball_fire"));
        player_id.move_cooldown[AT_USPECIAL] = 0;
    }
}


if(timer >= timer_total)
{
    instance_destroy();
}


