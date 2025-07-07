timer++;

//Tnt Getting Hurt
if(variant == 5 && !tnt_hit)
{   
    var col_hitbox = instance_place(x, y, asset_get("pHitBox"))
    if(col_hitbox != noone)
    {
        tnt_hit = true;
        timer = timer_total-15;
        shake_camera(8, 15);
        sound_play(asset_get("sfx_blow_heavy2"));

        var attacking_player = get_instance_player_id(col_hitbox);
        attacking_player.hitpause = true;
        attacking_player.hitstop = 15;
        attacking_player.hitstop_full = 15;
        attacking_player.old_hsp = attacking_player.hsp;
        attacking_player.old_vsp = attacking_player.vsp;
    }
}

if(timer >= timer_total)
{
    if(variant == 5)
    {
        player_id.tnt_cooldown = 30;
        sound_play(sound_get("tnt_explosion"));
        create_hitbox(AT_NSPECIAL, 1, x, y+32);
        //instance_create(x, y+32, "obj_article1");
    }

    instance_destroy();
}
else if(timer >= timer_total-100)
{
    image_index = ((timer%20) < 10);
}
else if(timer >= timer_total-20)
{
    image_index = ((timer%4) < 2);
}

//Slime & Crafting Unclipping
if(variant == 2 || variant = 3)
{   
    if(place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")))
    {
        y -= 1;
        vsp = 0;
    }
    else
    {
        vsp = 0;
    }
}

//Slime Cube Bouncing Players
if(variant == 2)
{
    var col_player = instance_place(x, y-1, oPlayer);
    if(col_player != noone && !col_player.free)
    {
        sound_play(sound_get("slime_bounce"))
        col_player.free = true;
        col_player.vsp = -16;
    }
}