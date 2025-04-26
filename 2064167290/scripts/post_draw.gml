//post-draw

// KIDs PLEASE LOOK AWAY!!!
// Don't do this at home, because it's the wrong way to do it.

/*
shader_start()
if ( ustrong_pale)
{
    
    //pale_timer += 1;
    
    
    if (pale_timer < 8)
    {
        draw_sprite_ext(sprite_get("ustrong_pale_entrance"),pale_timer / 4,pale_x,pale_y,pale_dir,1,0,c_white,1);
    }
    
    if (pale_sweetspot)
    {
        if (pale_timer >= 8) and (pale_timer < 16)
        {
            draw_sprite_ext(sprite_get("ustrong_pale_hurt"),(pale_timer - 8) / 4,pale_x,pale_y,pale_dir,1,0,c_white,1);
        }
        
        if (pale_timer >= 16) and (pale_timer < 40)
        {
            draw_sprite_ext(sprite_get("ustrong_pale_hurt"),1,pale_x,pale_y,pale_dir,1,0,c_white,1);
        }
    }
    else
    {
        if (pale_timer >= 8) and (pale_timer < 40)
        {
            draw_sprite_ext(sprite_get("ustrong_pale_looking"),0,pale_x,pale_y,pale_dir,1,0,c_white,1);
        }
    }
        
    if (pale_timer >= 40) and (pale_timer < 64)
    {
        if (pale_timer == 50)
        {
            sound_play(asset_get("sfx_quick_dodge"));
        }
         pale_sweetspot = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        
        draw_sprite_ext(sprite_get("ustrong_pale_leaving"),(pale_timer - 40) / 4,pale_x,pale_y,pale_dir,1,0,c_white,1);
    }
}

shader_end()
*/




// NSPECIAL


/*
if (attack == AT_NSPECIAL)  and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    if (window == 2) or (window == 3)
    {
    */
if (!runeF)
{
    if(attack == AT_NSPECIAL_2) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
    {}
    else
    {
        switch (cd_level){
            case 0:
            	var sprite = sprite_get("cd_black")
            break;
            case 1:
            	var sprite = sprite_get("cd_blue")
            break;
            case 2:
                var sprite = sprite_get("cd_green")
            break;
            case 3:
            	var sprite = sprite_get("cd_yellow")
            break;
            case 4:
            	var sprite = sprite_get("cd_orange")
            break;
            case 5:
            	var sprite = sprite_get("cd_red")
            break;
            case 6:
            	var sprite = sprite_get("cd_purple")
            break;
        }
        if (cd_level != 0) 
        {
            draw_sprite(sprite,cd_image,x,y - cd_height + cd_charge_offset);
            draw_sprite(sprite_get("number"),cd_level,x - 16, y - cd_height + 0);
        }
        else
        {
            if(attack == AT_NSPECIAL) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
            {
                draw_sprite(sprite,cd_image,x,y - cd_height + cd_charge_offset);
                draw_sprite(sprite_get("number"),cd_level,x - 16, y - cd_height + 0);
            }
        }
    }
}
        /*
    }
}
*/
if (cd_charge_offset_timer > 0)
{
    cd_charge_offset_timer -= 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}
else
{
    cd_charge_offset = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}




// PARTICULE

var is_turn = false;
with (obj_article1)
{
    if (player_id == other)
    {
        var is_turn = true;
        var inst = self;
    }
}

// arrow player
if (is_turn) and (!holding_turntable)
{
    draw_sprite(sprite_get("is_player"),get_player_team(player) - 1,inst.x, inst.y - 46);
}









// Spawning turntable

var is_turn = false;
with (obj_article1)
{
    if (player_id == other)
    {
        var is_turn = true;
        var inst = self;
    }
}



hcd_image += 0.13; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.

if (hcd_image > 4)
{
    hcd_image -= 4 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}

if (is_turn)
{
    switch (inst.col){
        case 0:
        	var sprite = sprite_get("cd_black")
        break;
        case 1:
        	var sprite = sprite_get("cd_blue")
        break;
        case 2:
            var sprite = sprite_get("cd_green")
        break;
        case 3:
        	var sprite = sprite_get("cd_yellow")
        break;
        case 4:
        	var sprite = sprite_get("cd_orange")
        break;
        case 5:
        	var sprite = sprite_get("cd_red")
        break;
        case 6:
        	var sprite = sprite_get("cd_purple")
        break;
    }
    
    
    if (is_hcd)
    {
        
        hcd_y -= hcd_spd; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        hcd_step += 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        
        if( hcd_spd > 0)
        {
            hcd_spd -= 0.5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        }
    
        if (hcd_step >= 239)
        {
            is_hcd = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        }
        
        
        if (hcd_step <= 30) 
        {
            draw_sprite(sprite,hcd_image,hcd_x, hcd_y);
        }
        if (hcd_step > 30) and (hcd_step <= 60) and (hcd_step % 3 != 0)
        {
            draw_sprite(sprite,hcd_image,hcd_x, hcd_y);
        }
    
    }
    
    
    
    // OFFSCREEN
    var offset = 38;
    var need_draw = false;
    
    var xv = view_get_xview(); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
    var wv = view_get_wview();
    var yv = view_get_yview(); // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
    var hv = view_get_hview();
    var image = 0;
    
    x_draw = inst.x; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    y_draw = inst.y; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    
    // right
    if (x_draw > xv + wv)
    {
        while(x_draw > xv + wv - offset)
        {
            x_draw -= 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            
            need_draw = true;
        }
        
        image = 2;
    }
    
    // left
    if (x_draw < xv)
    {
        while(x_draw < xv + offset)
        {
            x_draw += 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            
            need_draw = true;
        }
        
        image = 6;
    }
    
    // bottom
    if (y_draw > yv + hv - offset * (image != 0)) // this weird thing means, if already offscreen, then bubble do not wait for the object to cross 0, but offset.
    {
        while(y_draw > yv + hv - offset)
        {
            y_draw -= 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            
            need_draw = true;
        }
        
        if (image > 0)
        {
            image += 4;
            image *= 0.5;
        }
        else
        {
            image = 4;
        }
    }
    
    // top
    if (y_draw < yv + offset * (image != 0))
    {
        while(y_draw < yv + offset)
        {
            y_draw += 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            
            need_draw = true;
        }
        if (image == 2)
        {
            image = 1;
        }
        if (image == 6)
        {
            image = 7;
        }
        //image = 0;
    }
    
    
     switch (player){
        case 1:
        	var sprite = sprite_get("offscreen_red");
        break;
        case 2:
        	var sprite = sprite_get("offscreen_blue");
        break;
        case 3:
            var sprite = sprite_get("offscreen_pink");
        break;
        case 4:
        	var sprite = sprite_get("offscreen_green");
        break;
    }
    
    
    
    if (need_draw)
    {
        draw_sprite(sprite,image,x_draw,y_draw);
        draw_sprite(sprite_get("turnicon"),0,x_draw,y_draw);
    }
    
}



/*
with (obj_article2)
{
    if (player_id == other)
    {
        y_head = y - 110; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
           
        if (player_id.x - x != 0)
        {
            var rot = radtodeg(arctan((player_id.y - y_head) / (player_id.x - x)) + pi * (x > player_id.x))
        }
        else
        {
            var rot = 90 + 180 * (player_id.y < y_head)
        }
        
        draw_sprite_ext(sprite_get("pale_head"),0,x,y_head,1,1,rot,c_white,1)
    }
}