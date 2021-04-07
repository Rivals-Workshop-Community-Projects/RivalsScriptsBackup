switch (state){
    case PS_HITSTUN:
        //sprite_index = sandstar_form
    break;

    
    default: break;
}

if (state_cat == SC_HITSTUN) {
if sandstarred = true
sprite_index = sprite_get( "sandstar_hurt" );
else
sprite_index = sprite_get( "hurt" );
}

if (attack == AT_DTILT) and window = 4 {
sprite_index = sprite_get( "roll" );
image_speed = 1;
}


if (attack == AT_FSPECIAL) && state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND
{
if !(is_down_ani = false and is_forward_ani = false and is_up_ani = false)
{
if is_up_ani
{
sprite_index = sprite_get( "fspecialup" )
}

if is_down_ani
{
sprite_index = sprite_get( "fspecialdown" )
}

if is_forward_ani
{
sprite_index = sprite_get( "fspecial" )
}
}
}

if (state_cat == SC_HITSTUN) {
if sandstarred = true
sprite_index = sprite_get( "sandstar_hurt" );
else
sprite_index = sprite_get( "hurt" );
}