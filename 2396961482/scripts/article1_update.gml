image_index += article_anim_speed;

if (state == 0) // idle lol
{
    if (state_timer == 0) while (place_meeting(x,y,asset_get("par_block"))) x-=player_id.spr_dir;
    var hbox = create_hitbox(AT_DSPECIAL, 1, x+10, y);
    with (oPlayer) if ("barrierLockout" in self && barrierLockout.anglara == other.player_id.player && barrierLockout.timer > 0) hbox.can_hit[player] = false;
    if (state_timer > 200)//200 Is the base
    {
        sound_play(asset_get("sfx_ice_shatter_big"));
        instance_destroy(self);
        exit;
    }
    else
    {
        with (asset_get("pHitBox"))
        {
            if (attack == AT_NSPECIAL && hbox_num == 1 && place_meeting(x,y,other))
            {
                if(player_id != other.player_id && player_id.url == other.player_id.url) //Same character
                { with (other){ SetState(2); hboxhsp = other.hsp; hboxparry = other.orig_player; } destroyed = true; }
                else if(player_id == other.player_id)
                { with (other){ if(other.was_parried) { SetState(3); hboxparry = other.player; hboxhsp = other.hsp; } else SetState(1);} destroyed = true; }
            }
        }
    }
}
else if (state == 1) // nspec hit
{
    sound_play(asset_get("sfx_ice_shatter_big"));
    create_hitbox(AT_NSPECIAL, 2, x+0, y+40);
    instance_destroy(self);
    exit;
}
else if (state == 2) // nspec other angalara hit
{
    sound_play(asset_get("sfx_ice_shatter_big"));
    hbox = create_hitbox(AT_NSPECIAL, 2, x+0, y+40);
    hbox.hsp = hboxhsp;
    hbox.can_hit[hboxparry] = false;
    hbox.can_hit_self = true;
    instance_destroy(self);
    exit;
}
else if (state == 3) // nspec parried
{
    sound_play(asset_get("sfx_ice_shatter_big"));
    hbox = create_hitbox(AT_NSPECIAL, 2, x+0, y+40);
    hbox.hsp = hboxhsp;
    hbox.can_hit_self = true;
    hbox.can_hit[hboxparry] = false;
    instance_destroy(self);
    exit;
}
++state_timer;

#define SetState(_state)
{
    state = _state;
    state_timer = 0;
}

