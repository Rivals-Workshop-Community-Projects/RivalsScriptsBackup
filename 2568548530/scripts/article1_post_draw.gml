//

//NVM this just draws infront of article !!!

/*
if(wasCollected)
{
    //main piece, actual article
    //draw_sprite(sprite_get("pileAirUp"), frame, x, y);
    draw_sprite_ext(sprite_get("pileAirUp"), frame, x, y, 1, 1, 0, c_white, alpha );


    //fakes
    //draw_sprite(sprite_get("pileAirUp"), 0, x+32, y);

}
*/

/*
//instead from player
if(drawInfront)
{    
    
    if(newFrame == -99)
        draw_sprite_ext(spr, frame, x, y, spr_dir, 1, 0, c_white, alpha );
    else
        draw_sprite_ext(spr, newFrame, x, y, spr_dir, 1, 0, c_white, alpha );
}
*/




if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)
{
    if(player_id == other && self.drawInfront)
    {    
        if(self.newFrame == -99)
            draw_sprite_ext(self.spr, self.frame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );
        else
            draw_sprite_ext(self.spr, self.newFrame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );

    }
}