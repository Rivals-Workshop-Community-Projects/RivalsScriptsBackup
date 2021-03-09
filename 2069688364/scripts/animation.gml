switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_DASH_START:
    sprite_index=sprite_get("dash")
    break
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
    sprite_index=sprite_get("jump")
    image_index=0
    break
    default: break;
}
var name=sprite_get_name(sprite_index)
if name="net_disc_spr"
{
    sprite_index=sprite_get("idle")
    if free
    {
        sprite_index=sprite_get("jump")
    }
}
if sprite_index=sprite_get("jump")
{
    image_index=1
    if hsp*spr_dir>3 image_index=2
    if hsp*spr_dir<-3 image_index=0
}
if sprite_index=sprite_get("ftaunt") and spr_dir=-1
{
    sprite_index=sprite_get("btaunt")
}
if attack=AT_NSPECIAL and (state=PS_ATTACK_AIR or state=PS_ATTACK_GROUND)
{
    if instance_exists(spear)
    {
        sprite_index=sprite_get("detonate")
    }
}
//image_index=place_free(x,y+128)