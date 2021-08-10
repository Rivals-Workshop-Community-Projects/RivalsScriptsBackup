//


//predraw until picked up by player? OR have them fly away from player, then go post_draw
//NVM post draw just draws infront of article !!!

//if(!wasCollected)
//{

    //main piece, actual article
/*
//instead from player
if(!drawInfront)
{    
    if(newFrame == -99)
        draw_sprite_ext(spr, frame, x, y, spr_dir, 1, 0, c_white, alpha );
    else
        draw_sprite_ext(spr, newFrame, x, y, spr_dir, 1, 0, c_white, alpha );
}*/
//}


if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)
{
    if(self.newFrame == -99)
        draw_sprite_ext(self.spr, self.frame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );
    else
        draw_sprite_ext(self.spr, self.newFrame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );
}