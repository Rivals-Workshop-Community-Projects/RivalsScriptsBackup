//article1_update
if !stabbed
{
    if hsp=0 or vsp=0
    {
        hsp=0
        vsp=0
        sound_play(asset_get("sfx_shovel_hit_heavy2"))
        stabbed=true
    }
}
else
{
    if explode=1
    {
        sprite_index=sprite_get("speardet")
        timer=mtime
        explode=2
    }
    else if explode=2
    {
        timer--
        image_speed=0
        image_index=timer/2
        if timer<=0
        {
            with oPlayer
            {
                if point_distance(x,y,other.x,other.y)<other.hbrad
                {
                    //x=-10000
                    hitpause=true
                    hitstop=other.mtime
                }
            }
            timer=mtime
            explode=3
        }
    }
    else if explode=3
    {
        timer--
        image_index=1
        if timer<=0
        {
            var h=create_hitbox( AT_NSPECIAL, 1, x, y )
            h.type=1
            h.length=1
            h.mask_index=-1
            h.x_pos=x-h.player_id.x
            h.y_pos=y-h.player_id.y
            h.image_xscale=hbrad*2/200
            h.image_yscale=hbrad*2/200
            h.sound_effect=asset_get("sfx_blow_heavy2")
            h.kb_angle=90
            h.kb_value=12
            h.effect=1
            h.kb_scale=1
            h.damage=20
            h.hit_priority=10
            sound_play(asset_get("sfx_abyss_explosion_big"))
            spawn_hit_fx( x, y, 143 )
            instance_destroy(id)
        }
    }
}
if y>room_height
{
    instance_destroy(id)
}