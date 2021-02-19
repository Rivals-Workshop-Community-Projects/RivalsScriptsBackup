switch (state){
    case PS_IDLE:
     //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state == PS_SPAWN) && g7skin = 0{
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
       
    }
}
else if g7skin = 1
{
        if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro2");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro2");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        g7skin = 0;
       
    }
}

/*if (attack == (AT_USPECIAL)) && (left_down) && (spr_dir = 1)
{
spr_angle += 1
}

if (attack == (AT_USPECIAL)) && (right_down) && (spr_dir = -1)

{
spr_angle -= 1
}

if spr_angle > 10 
{
spr_angle = 10
}

if spr_angle < -10 
{
spr_angle = -10
}

///changes the angle of the sprite when going left or right during USPECIAL
/*if (attack == (AT_USPECIAL)) && (left_down) && (spr_dir = -1)
{
spr_angle += 1 

}

if (attack == (AT_USPECIAL)) && (right_down) && (spr_dir = 1)

{
spr_angle -= 1
}

if spr_angle > 10 
{
spr_angle = 10
}

if spr_angle < -10 
{
spr_angle = -10
}

if (attack == (AT_USPECIAL)) && joy_pad_idle{
    if spr_angle < 0
    {
     spr_angle += 1
    }
     if spr_angle > 0
    {
     spr_angle -= 1
    }
}
hurtboxID.image_angle = spr_angle 
