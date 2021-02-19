//post-draw
switch(attack)
{
    case AT_FSPECIAL_2:
        if (popup > -1)
        {
            draw_sprite_ext(sprite_get("evidence_pickup"), popup, (old_x + 0), old_y - 110, 1 * spr_dir, 1, 0, -1, 1);    
        }
        break;
    case AT_USPECIAL:
        if (stuff == 1)
        {
            draw_sprite_ext(sprite_get("explosion"), frame, old_x - (30 * old_dir), old_y, old_dir, 1, 0, -1, 1);
        }
        break;
}

switch(appear)
{
    case 1:
        if (spr_dir == -1) 
        {
            draw_sprite(sprite_get("objection"), frame, (x- 200), y - 100);   
        }
        else
        {
            draw_sprite(sprite_get("objection"), frame, (x + 40), y - 100);
        }   
        break;
    case 2:
        if (spr_dir == -1) 
        {
            draw_sprite(sprite_get("objection"), frame, (x- 200), y - 30);   
        }
        else
        {
            draw_sprite(sprite_get("objection"), frame, (x + 40), y - 30);
        }
        break;
    case 3:
        if (spr_dir == -1) 
        {
            draw_sprite(sprite_get("hold_it"), frame, (x- 200), y - 130);   
        }
        else
        {
            draw_sprite(sprite_get("hold_it"), frame, (x + 40), y - 130);
        }  
        break;
    case 4:
        if (spr_dir == -1) 
        {
            draw_sprite(sprite_get("take_that"), frame, (x + 40), y - 100);   
        }
        else
        {
            draw_sprite(sprite_get("take_that"), frame, (x - 200), y - 100);
        }  
        break;
}

if (popup2 = 1)
{
    switch (investigate) {
    case 0:
        draw_sprite_ext(sprite_get("evidenceIcon1"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 1:
        draw_sprite_ext(sprite_get("evidenceIcon2"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 2:
        draw_sprite_ext(sprite_get("evidenceIcon3"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 3:
        draw_sprite_ext(sprite_get("evidenceIcon4"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 4:
        draw_sprite_ext(sprite_get("evidenceIcon5"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 5:
        draw_sprite_ext(sprite_get("evidenceIcon6"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 6:
        draw_sprite_ext(sprite_get("evidenceIcon7"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    case 7:
        draw_sprite_ext(sprite_get("evidenceIcon8"), 0, (old_x + (62 * spr_dir)), old_y - 88, 1 * spr_dir, 1, 0, -1, 1);
        break;
    }
}
if (psychedraw == 1)
{
    if (frame2 < 12)
    {
        draw_sprite(sprite_get("chain"), 0, x3 + -530 + (chain * 50), y3 + 520 + (chain * -50));
        draw_sprite_ext(sprite_get("chain"), 0, x3 + 510 + (chain * -50), y3 + 480 + (chain * -50), 1, 1, 90, -1, 1);        
    }
    else if (frame2 >= 12 and frame2 < 37)
    {
        draw_sprite(sprite_get("chain"), 0, x3 + -530 + (12 * 50), y3 + 520 + (12 * -50));
        draw_sprite_ext(sprite_get("chain"), 0, x3 + 510 + (12 * -50), y3 + 480 + (12 * -50), 1, 1, 90, -1, 1);       
        draw_sprite(sprite_get("psyche-lock"), lock, x3, y3);
    }    
    else if (frame2 >=37 and frame2 < 54)
    {
        draw_sprite(sprite_get("chain"), 0, x3 + -530 + (chain * 50), y3 + 520 + (chain * -50));
        draw_sprite_ext(sprite_get("chain"), 0, x3 + 510 + (chain * -50), y3 + 480 + (chain * -50), 1, 1, 90, -1, 1);
        if (lock < 22)
        {
            draw_sprite(sprite_get("psyche-lock"), lock, x3, y3);
        }
    }    
}
