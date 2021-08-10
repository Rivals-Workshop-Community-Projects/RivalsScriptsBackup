//article1_update

if(hitBox != -1)
{
	if(hb == noone)
		hb = create_hitbox(49, hitBox, x, y);
	else if(instance_exists(hb))
	{
		hb.x = x;
		hb.y = y;
	}
	//print(h.has_hit); //doesnt work? and woudl mean no one gets hit by this article anymore
}

freeReal = free;

if(doFade)
{
    fadeTimer++;
    alpha = ease_cubeIn( 1, 0, fadeTimer, fadeTimeTotal);
    
    if(fadeTimer > fadeTimeTotal)
    {
        if(killAfterFade)
        {
            instance_destroy();
            return;
        }
        else
        {
            x = parentArticle.x;
            y = parentArticle.y;
        }
    }
}


if(!on_ground)
    frame = floor(img_num * (anim_timer + animOffset) /(img_num * animSpd));
    
anim_timer++;
    

/*
with (oPlayer) //pHurtBox
{
    //if (point_distance(x,y,player_id.x,player_id.y)< 15) 
    //instance_place(x, y, obj);
    if (id != other.player_id && place_meeting(x,y,other))
        print_debug("overlap other player");
}
*/
    
/*
with (player_id.testPiece)
{
    if (place_meeting(x,y,other)) 
    {
        //print_debug("overlap other article");
        //free = false;
        freeReal = false;
        //vsp -= 1;
        
        var forceDirX = x - other.x;
        var forceDirY = y - other.y;

        var len = point_distance(x, y, other.x, other.y);
        
        forceDirX = forceDirX / len;
        forceDirY = forceDirY / len;

        hsp = forceDirX * 1;
        vsp = forceDirY * 1;
        
        //x = x + forceDirX;
        //y = y + forceDirY;
    }
}
*/

//print_debug(string(freeReal));


/*
if(!isVisual && !spawnedVisuals)
{
    spawnedVisuals = true;

    with(player_id) //player
    {
        //visualPieces = ds_list_create();

        //testPiece = instance_create(x, y - 64, "obj_article2");
        //ds_list_add(visualPieces, testPiece);

        print_debug("spawn");
        
        var testtt = instance_create(x, y - 64, "obj_article1");
        testtt.isVisual = true;
        //crashes.. either bcz can't spawn article from article, or bcz endless recursion??
    }
}
*/





if(!wasCollected)
{
    if (!on_ground && free) // in air
    {
        vsp += grav;
        hsp *= 0.99;
        prev_vsp = vsp;
        prev_hsp = hsp;

        //image_angle = 90;
        //image_angle = Math.Atan2(vsp,hsp);
        //image_angle = point_direction(0,0,hsp,vsp) - 90;
          
          
        //fake stay higher to make a "pile"
        if(isVisual && fakeFloorHeight != 0 && ((instance_exists(parentArticle) && y + vsp >= parentArticle.groundY - fakeFloorHeight) 
                                             || (!instance_exists(parentArticle) && y + vsp >= player_id.y - fakeFloorHeight)))
        {
            /*
            vsp = 0;
            //vsp = (prev_vsp * -1 )*damping;
            on_ground = true;
            groundY = y;
            */

            on_ground = true;
            vsp = (prev_vsp * -1 )*damping;
        }
    }
    else
    {
        if (!on_ground) //just landed
        {
            //sound_play(sound_get("custom_name"));
            //sound_play(asset_get("sfx_ell_small_missile_ground"));
            
            var nr = random_func(0, 18, true)+1;
            if(nr < 10)
                nr = "0"+string(nr);
            else
                nr = string(nr);
            sound_play(sound_get("pieceLand" + nr), false, noone, 1);
            
            //print_debug("GROUNDED");

            on_ground = true;

            vsp = (prev_vsp * -1 )*damping;
            //free = false;
            //vsp = 0; //without this it bounces... but also falls through platforms..

            //sprite_index = sprite_get("pilefloor");
            //mask_index = sprite_get("pilefloor");
            //image_angle = 0;
            //spawn_hit_fx(x, y - 16, 13);
            //print_debug("transform");
        }

        if (vsp == 0)
        {
            on_ground = true
        }

        if (!on_ground && abs(vsp)<tolerance)
        {
            //just bounce, not final touch
        }

        if(on_ground)
        {
            hsp *= 0.9
            if(reattachDelay == 0)
                canBeCollected = true;
            
            if(!isVisual || fakeFloorHeight == 0)
            {
                if(free) //make sure come to floor
                {
                    vsp += grav;
                    
                    if(frozen) //was on ground but slipped off
                    {    
                        groundY = y;
                        canBeCollected = false;
                    }
                }
                else
                {
                    frozen = true;
                    groundY = y;
                }
            }
            else
            {
                if(isVisual && ((instance_exists(parentArticle) && y + vsp < parentArticle.groundY - fakeFloorHeight)
                             || (!instance_exists(parentArticle) && y + vsp < player_id.y - fakeFloorHeight)))
                {    
                    vsp += grav * 1;
                }
                else if(abs(vsp) > 2)
                    vsp = (prev_vsp * -1 ) * 0.1;
                else
                    vsp = 0;
            }
            
        }
        
        //if(vsp == 0 && hsp == 0)
        //    frozen = true;
    }


    if(deleted) 
        return;


    if(reattachDelay != 0)
    {
        reattachTimer++;
            
        if(reattachTimer >= reattachDelay)
        {   
            reattachTimer = -99999;
            //collectedRegularly = false;
            collected();
        }
    }
    
    //if(y >= room_height)
    if (y > get_stage_data(SD_Y_POS)+get_stage_data(SD_BOTTOM_BLASTZONE))// view_get_yview() + view_get_hview()+100)
    {
        if(!isVisual)
        {
        	if(fallOfCollectTimer == 0)
    		{
    			sound_play(asset_get("sfx_death2"));
    			//spawn_hit_fx(x,y,156)
    			var marginX = 16;
    			var marginY = -8;
    			var fx spawn_hit_fx(clamp(x, view_get_xview()+marginX, view_get_xview() + view_get_wview()-marginX),
    						clamp(y, view_get_xview()+marginY, view_get_yview() + view_get_hview())-marginY,
    						196);//147 198 157 143
		        //fx.draw_angle = 90;
		        //fx.spr_dir = ;
        
	            //var clone = instance_create( x+1000, y+1000, "oPlayer"); 
	            //why doesnt it die?
    			/*with (oPlayer) 
			    {
			        //print(string(player) + " " + string(object_index == oTestPlayer));
			        if(!custom_clone)
			        {
			            var clone = instance_create( 200, 200, "oPlayer"); 
			            clone.custom_clone = true;
			        	//clone.sprite_index = asset_get("empty_sprite");
			        	//clone.visible = false;
			        	//clone.mask_index = asset_get("empty_sprite");
			        	//clone.hurtbox_spr = sprite_get("empty");
			        	//clone.crouchbox_spr = asset_get("empty_sprite");
			
			        	//clone.attack_invince = true;
			        	//clone.invincible = true;
			        	//clone.initial_invince = 2;
			        	//clone.owner = self;
			        }
			    }*/
    		}
    			
            //fade leftover pieces on stage
            for (var i = 0; i < ds_list_size(visualPieces); i++) 
            {
                var p = visualPieces[| i];
                p.killAfterFade = false;
                p.doFade = true;
                p.fadeTimeTotal = 90;//60;
            }
        
            fallOfCollectTimer++;

            if(fallOfCollectTimer >= fallOfCollectDelay)
            {   
                fallOfCollectTimer = -99999;
                collectedRegularly = false;
                collected();
            }
        }
    }
    else if(canBeCollected && reattachDelay == 0)
    {
        if(!isVisual)
        {
            if (place_meeting(x,y,player_id))
            {
                var curr_dist = point_distance(x,y,player_id.x,player_id.y);
                if (curr_dist < 25) 
                {

                    //sound_play(sound_effect);
                    //last_hit_effect = hit_effect
                    //spawn_hit_fx(owner.x,owner.y,hit_effect)
                    //spawn_hit_fx(x,y,hit_effect)

                    collectedRegularly = true;
                    collected();
                }
            }
        }    
    }
}
else //collected, so fly to position on player, then make him normal
{
    if(isVisual)
    {
        if(reattachDelay != 0)
        {
            var halfAnimDurTot = collectAnimDurTotal * 0.5;

            if(!startedCollectAnim)
            {
                startedCollectAnim = true;

                startColX = round(x);
                startColY = round(y);
            }
                
            //on walk over -> animate all to fly onto cube & rotate to default, then smoke, then swap
            if(collectAnimTimer <= halfAnimDurTot)
            {
                //spread out
                x = round(ease_quadOut(startColX, player_id.x + endOffsetX*2, collectAnimTimer, halfAnimDurTot));
                y = round(ease_quadOut(startColY, player_id.y + endOffsetY*2, collectAnimTimer, halfAnimDurTot));
            }
            else
            {
                //go back to player
                x = round(ease_quadIn(player_id.x + endOffsetX*2, player_id.x + endOffsetX, collectAnimTimer-halfAnimDurTot, halfAnimDurTot));
                y = round(ease_quadIn(player_id.y + endOffsetY*2,player_id. y + endOffsetY, collectAnimTimer-halfAnimDurTot, halfAnimDurTot));
            }
            
            newFrame = ease_linear(frame, frame-(frame % img_num), collectAnimTimer, collectAnimDurTotal);
            
            
            if (collectAnimTimer >= collectAnimDurTotal)
            {
                 if(reattachDelay != 0)
                 {           
                    playSounds(true);
                    with (player_id) 
                         collected_final(true);
                 }
                
                instance_destroy();
                exit;//return;
            }

            collectAnimTimer++;
        }
        
        return;
    }
    
    with (player_id) 
    {
        if(!pieceArticle.collectedRegularly) 
        {
            var flyUpDur = 120; //60;
            var flyUpDurHalf = flyUpDur * 0.5;
            
            if(!pieceArticle.startedCollectAnim)
            { 
                pieceArticle.startedCollectAnim = true;
                
                clampPosToView(pieceArticle);
                
                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    
                    piece.doFade = false;
                    piece.alpha = 1;
                    
                    piece.on_ground = false; //to rotate again
                    
                    randomiz(piece, i);
                }
                
                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    piece.startColX = round(piece.x);
                    piece.startColY = round(piece.y);
                }

                pieceArticle.startColX = round(pieceArticle.x);
                pieceArticle.startColY = round(pieceArticle.y);
            }
                
            //come flying into view from off stage
            
            for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
            {
                var piece = pieceArticle.visualPieces[| i];
                piece.y = ease_quadInOut(piece.startColY, round(y - 128 - 256 + piece.startColY-(view_get_yview() + view_get_hview())), pieceArticle.collectAnimTimer, flyUpDur);
                
                
                if(pieceArticle.collectAnimTimer >= flyUpDurHalf)
                    piece.x = ease_quadInOut(piece.startColX, x + (piece.startColX-pieceArticle.startColX), pieceArticle.collectAnimTimer-flyUpDurHalf, flyUpDurHalf);
            }

            pieceArticle.y = ease_quadInOut(pieceArticle.startColY, round(y - 128 - 256 + pieceArticle.startColY-(view_get_yview() + view_get_hview())), pieceArticle.collectAnimTimer, flyUpDur);
            

            if(pieceArticle.collectAnimTimer >= flyUpDurHalf)
                pieceArticle.x = ease_quadInOut(pieceArticle.startColX, x, pieceArticle.collectAnimTimer-flyUpDurHalf, flyUpDurHalf);



            if (pieceArticle.collectAnimTimer >= flyUpDur)
            {
                pieceArticle.startedCollectAnim = false;
                pieceArticle.collectAnimTimer = 0;
                pieceArticle.collectedRegularly = true;
            }
            else
            {
                pieceArticle.collectAnimTimer++;
            }
        }
        else //collected regularly from ground (or after flew up...)
        {
            var halfAnimDurTot = pieceArticle.collectAnimDurTotal * 0.5;

            if(!pieceArticle.startedCollectAnim)
            {
                pieceArticle.startedCollectAnim = true;

                //delete lonely visual pieces that fell off
                for (var i = ds_list_size(pieceArticle.visualPieces) - 1; i >= 0; i--) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    if (piece.y > view_get_yview() + view_get_hview()) //if(piece.y >= room_height)
                    {
                        instance_destroy(piece);
                        ds_list_delete(pieceArticle.visualPieces, i);
                    }
                }

                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    piece.startColX = round(piece.x);
                    piece.startColY = round(piece.y);
                }

                pieceArticle.startColX = round(pieceArticle.x);
                pieceArticle.startColY = round(pieceArticle.y);
            }
                
            //on walk over -> animate all to fly onto cube & rotate to default, then smoke, then swap
            if(pieceArticle.collectAnimTimer <= halfAnimDurTot)
            {
                //spread out

                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    piece.x = ease_quadOut(piece.startColX, x + piece.endOffsetX*2, pieceArticle.collectAnimTimer, halfAnimDurTot);
                    piece.y = ease_quadOut(piece.startColY, y + piece.endOffsetY*2, pieceArticle.collectAnimTimer, halfAnimDurTot);
                }
                pieceArticle.x = ease_quadOut(pieceArticle.startColX, x + pieceArticle.endOffsetX*2, pieceArticle.collectAnimTimer, halfAnimDurTot);
                pieceArticle.y = ease_quadOut(pieceArticle.startColY, y + pieceArticle.endOffsetY*2, pieceArticle.collectAnimTimer, halfAnimDurTot);
            }
            else
            {
                //go back to player

                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    var piece = pieceArticle.visualPieces[| i];
                    piece.x = ease_quadIn(x + piece.endOffsetX*2, x + piece.endOffsetX, pieceArticle.collectAnimTimer-halfAnimDurTot, halfAnimDurTot);
                    piece.y = ease_quadIn(y + piece.endOffsetY*2, y + piece.endOffsetY, pieceArticle.collectAnimTimer-halfAnimDurTot, halfAnimDurTot);
                }

                pieceArticle.x = ease_quadIn(x + pieceArticle.endOffsetX*2, x + pieceArticle.endOffsetX, pieceArticle.collectAnimTimer-halfAnimDurTot, halfAnimDurTot);
                pieceArticle.y = ease_quadIn(y + pieceArticle.endOffsetY*2, y + pieceArticle.endOffsetY, pieceArticle.collectAnimTimer-halfAnimDurTot, halfAnimDurTot);
            }
            
            for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
            {
                var piece = pieceArticle.visualPieces[| i];
                piece.newFrame = ease_linear(piece.frame, piece.frame-(piece.frame % piece.img_num), pieceArticle.collectAnimTimer, pieceArticle.collectAnimDurTotal);
            }
            pieceArticle.newFrame = ease_linear(pieceArticle.frame, pieceArticle.frame-(pieceArticle.frame % piece.img_num), pieceArticle.collectAnimTimer, pieceArticle.collectAnimDurTotal);

            //if (len <= 10) 
            if (pieceArticle.collectAnimTimer >= pieceArticle.collectAnimDurTotal)
            {
                playSounds(false);
                collected_final(false);
            }

            if(instance_exists(pieceArticle))
                pieceArticle.collectAnimTimer++;
        }
    }
}

#define collected()
{
    if(!wasCollected)
    {
        wasCollected = true;
        
        if(!isVisual)
        {
            with (player_id) 
            {
                for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
                {
                    pieceArticle.visualPieces[| i].can_be_grounded = false;
                    pieceArticle.visualPieces[| i].ignores_walls = true;
                    pieceArticle.visualPieces[| i].wasCollected = true;
                }
            }
        }
                    
        can_be_grounded = false;
        ignores_walls = true;
        
        if(!isVisual || mainPiece)
            //sound_play(asset_get("sfx_diamond_small_collect")); //sfx_coin_collect
        	sound_play(asset_get("sfx_ell_nair"));
    	    //sound_play(asset_get("sfx_bird_upspecial"));
    }
}

//with oPlayer:
#define collected_final(delPiecesManually) //if true, called from every article
{
    var centerY = 40;
    
    if(!delPiecesManually || pieceArticle == other)
    {
	    for (var i = 0; i < 8; i++)
	    {
	        var rx = random_func(i+0, 40, false) - 20;
	        var ry = random_func(i+1, 32, false) - 16;
	        var rNegPos = random_func(i+2, 2, true);
	        
	        var fx = spawn_hit_fx(x + rx, y - centerY + ry, rNegPos == 0 ? 13 : 14);
	        fx.draw_angle = random_func(i+3, 360, false);
	        fx.spr_dir = random_func(i+4, 2, true) * 2 - 1;
	    }
		    
	    //make more smoke infront?
	    var fx = spawn_hit_fx(x + (random_func(i+5, 16, false) - 8), y - centerY + (random_func(i+6, 16, false) - 8), 13);
	    fx.draw_angle = random_func(i+7, 360, false);
	    fx.spr_dir = random_func(i+8, 2, true) * 2 - 1;
	    fx.depth = depth - 1; //just infront of player
    }

    shotArticles = false;
    canAttack = true;
    
    //TODO: instead rotate all colors to this
    left = pieceArticle.colorL;
    front = pieceArticle.colorF;
    top = pieceArticle.colorT;
    
    back = opposite(front);
    right = opposite(left);
    bot = opposite(top);

    init_shader_custom(true);

    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL_AIR] = 0;

    move_cooldown[AT_UAIR] = 0;
    move_cooldown[AT_FAIR] = 0;
    move_cooldown[AT_NAIR] = 0;
    move_cooldown[AT_DAIR] = 0;
    move_cooldown[AT_BAIR] = 0;

    //move_cooldown[AT_TAUNT] = 0;
    move_cooldown[AT_JAB] = 0;
    move_cooldown[AT_DATTACK] = 0;

    move_cooldown[AT_UTILT] = 0;
    move_cooldown[AT_FTILT] = 0;
    move_cooldown[AT_DTILT] = 0;

    move_cooldown[AT_USTRONG] = 0;
    move_cooldown[AT_FSTRONG] = 0;
    move_cooldown[AT_DSTRONG] = 0;


    
    if(!delPiecesManually)
    
    
    if(!delPiecesManually)
    {
        //for (var i = 0; i < ds_list_size(visualPieces); i++) 
        for (var i = ds_list_size(pieceArticle.visualPieces) - 1; i >= 0; i--) 
        {
            instance_destroy(pieceArticle.visualPieces[| i]);
            ds_list_delete(pieceArticle.visualPieces, i);
        }
    
        instance_destroy(pieceArticle); 
    }
}

#define playSounds(fromArticle)
{
    if(fromArticle)
    {
        //print(x+y); //id);
        //problem is this is all inside player....
        
        var nr = random_func(x+y, 27, true)+1;
        if(nr < 10)
            nr = "0"+string(nr);
        else
            nr = string(nr);
        sound_play(sound_get("assembly" + nr), false, noone, 1);
    }
    else
    {
        //print(x+y);
        
        for (var i = 0; i < 16; i++)
        {    
            var nr = random_func(i, 27, true)+1;
            if(nr < 10)
                nr = "0"+string(nr);
            else
                nr = string(nr);
            sound_play(sound_get("assembly" + nr), false, noone, 1);
        }
    }
}

#define clampPosToView(piece)
{
    piece.hsp = 0;
    piece.vsp = 0;
    if (piece.y > view_get_yview() + view_get_hview())
        piece.y = view_get_yview() + view_get_hview() + 256;// + random_func(i+0, 128, true) - 64;
    if (piece.x > view_get_xview() + view_get_wview())
        piece.x = view_get_xview() + view_get_wview() - 64;// + random_func(i+2, 128, true) - 64;
    if (piece.x < view_get_xview())
        piece.x = view_get_xview() + 64;// + random_func(i+4, 128, true) - 64;
}

#define randomiz(piece, i)
{
    piece.hsp = 0;
    piece.vsp = 0;
    piece.y = pieceArticle.y + random_func(i+0, 64, true) - 32;
    piece.x = pieceArticle.x + random_func(i+2, 64, true) - 32;
}

#define flyTo(piece, toX, toY)
{
    var currPosX = piece.x;// + piece.hsp;
    var currPosY = piece.y;// + piece.vsp;
    
    var flyDirX = toX - currPosX;
    var flyDirY = toY - currPosY;
    
    var len = point_distance(toX, toY, currPosX, currPosY); //sqr(flyDirX*flyDirX + flyDirY*flyDirY);
    
    flyDirX = flyDirX / len;
    flyDirY = flyDirY / len;
    
    piece.hsp = flyDirX * 5;
    piece.vsp = flyDirY * 5;
    
    return len;
}

#define opposite(c)
{
    if(c == "white") return "yellow";
    if(c == "yellow") return "white";
    if(c == "red") return "orange";
    if(c == "orange") return "red";
    if(c == "green") return "blue";
    if(c == "blue") return "green";
}
#define init_shader_custom(doShader)
{
	if(canAttack)
	{
		frontArtic = front;
		backArtic = back;
		leftArtic = left;
		rightArtic = right;
		topArtic = top;
		botArtic = bot;
	}
	if(doShader)
		init_shader();
}