//

if(is_aether_stage())
{
    maskStart();
            
    with (oPlayer)
    {
        if(state == PS_DEAD || state == PS_RESPAWN)break;
        
        //shader_start();
        var posScaleArray = getMirroredPosScale(true);
        if(posScaleArray != noone)
        draw_sprite_ext(sprite_index, image_index, posScaleArray[0], posScaleArray[1], 
                                                    posScaleArray[2], posScaleArray[3], 0, other.reflectColor, 1);
        //shader_end();
    }
    
    //------- why do these lag? draw too much? check if even in range? then dont draw it? dont even calculate!
    //TODO: could also check lifetime & alpha
    
    if (instance_exists(hit_fx_obj))
    {
        var maxx = 16;
        with (hit_fx_obj)
        {
            if(maxx == 0)break;
            var posScaleArray = getMirroredPosScale(false);
            if(posScaleArray != noone)
            {
                draw_sprite_ext(sprite_index, image_index, posScaleArray[0], posScaleArray[1], 
                                                            posScaleArray[2], posScaleArray[3], 0, other.reflectColor, 1);
                maxx--;
            }
        }
    }/**/
    if (instance_exists(obj_article1))
    {
        var maxx = 8; //TODO: should try to draw every second one? so not only one side is drawn... how?
        //var count = 0;
        with (obj_article1)
        {
            if(maxx == 0)break;
            if("alpha" in self && alpha != noone && alpha < 1)continue;
            //if(count%2!=0)continue;//this also ignores some even if not reached max...
            var posScaleArray = getMirroredPosScale(false);
            if(posScaleArray != noone)
            {
                if(sprite_index != -1)
                    draw_sprite_ext(sprite_index, image_index, posScaleArray[0], posScaleArray[1], 
                                                                posScaleArray[2], posScaleArray[3], 0, other.reflectColor, 1);
                if("spr" in self && spr != noone)
                {
                    if(newFrame == -99)
                        draw_sprite_ext(spr, frame, posScaleArray[0], posScaleArray[1], 
                                                    posScaleArray[2], posScaleArray[3], 0, other.reflectColor, 1);
                    else
                        draw_sprite_ext(spr, newFrame, posScaleArray[0], posScaleArray[1], 
                                                        posScaleArray[2], posScaleArray[3], 0, other.reflectColor, 1);
                }
                maxx--;
            }
            //count++;
        }
    }/**/
    maskEnd();  
}

//draw_debug_text(round(x+xCenter), round(y+yCenter), "X");//not quite center? 
//draw_debug_text(xCenter, yCenter, "X");//this one seems accurate but doesnt move

if(inBackground)
    draw_sprite_ext(other.sprites,other.overlayId,x,y,2,2,0,overlayColor,overlayAlpha);
else
    draw_sprite_ext(other.sprites,other.overlayId,78,28,2,2,0,overlayColor,overlayAlpha);

/*
hit_fx_obj -> only one that works??
obj_article1
obj_article2
obj_article3
obj_article_solid
obj_article_platform
par_block -> also works but no x/y?
*/

/*var offset = 100;
with (oPlayer)
{
    if (instance_exists(hit_fx_obj))//asset_get("hit_fx_obj")))
    {
        with (hit_fx_obj)
        {
            //print("D");
            //print(player_id);
            //draw_debug_text(floor(x),floor(y),"d");
            draw_sprite_ext(sprite_index, image_index, x-offset, y-offset, 1, 1, 0, c_white, 1);
        }
    }
}*/

/*with (oPlayer)
{
    if (instance_exists(obj_article1))
    {
      //with (obj_article1) 
      with(asset_get("obj_article1"))
      {
          //if (player_id == other.id)
        //if "only_my_article_would_have_a_var_called_this" not in self continue;
                print("D");
      }
    }
}*/

/*with (oPlayer)
{
    if (instance_exists(asset_get("par_block")))
    {
        with(asset_get("par_block"))
        {
            if ("x" in self)
            {
                print("D");
                draw_debug_text(floor(x),floor(y),"d");
                draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);
            }
        }
    }
}*/



//TODO: 
//      less alpha at the edge of mirror?
//      add some blur/distrotions to reflection? (or other drawing method to make it tilt like the mirror?)
//      same thing with monitor, but different values?

//      also draw articles / vfx? somehow get screen pixels?
//      try to re-add scale interpolation? or makes no sense


#define getMirroredPosScale(isChar)

var scale = 1;
if(isChar && small_sprites) scale = 2;

//culling for performance... needs to be based on each object dimension (and the article/vfx sprite...)
/*var xDeltaAbs = abs(xDelta);
var yDeltaAbs = abs(yDelta);
if(xDeltaAbs > other.dimX || yDeltaAbs > other.dimY)
    return noone;*/

/*var height = sprite_height;
var heightHalf = height * 0.5;
var widthHalf = sprite_width * 0.5;
//var sprOffX = sprite_get_xoffset(sprite_index);
//var sprOffY = sprite_get_yoffset(sprite_index);
draw_line_color(x+widthHalf, y-height, x-widthHalf, y-height, c_white, c_white);
draw_line_color(x+widthHalf, y, x+widthHalf, y-height, c_white, c_white);

//print(height); 
//why not accurate at all? especially vfx... and no articles??? (maybe cube position special?)
//---> x and y are the center on other things than chars?
//try using it for culling & tweak object sizes/centers? what about place_meeting()

//draw_line_color(other.xCenter-other.dimXh, other.yCenter-other.dimYh, other.xCenter+other.dimXh, other.yCenter-other.dimYh, c_red, c_red);
//draw_line_color(other.xCenter, other.yCenter, other.xCenter, other.yCenter-other.dimY, c_red, c_red);

draw_line_color(other.bboxL, other.bboxT, other.bboxR, other.bboxT, c_red, c_red);
draw_line_color(other.bboxR, other.bboxT, other.bboxR, other.bboxB, c_red, c_red);

//draw_line_color(bbox_left, bbox_top, bbox_right, bbox_top, c_white, c_white);
//draw_line_color(bbox_right, bbox_top, bbox_right, bbox_bottom, c_white, c_white);
//not accurate for characters

//TODO: for characters dont use bbox, but sprite? test zetterburn, cube, toon, regi...
var offX = sprite_get_xoffset(sprite_index);
var offY = sprite_get_yoffset(sprite_index);
draw_line_color(x-offX*scale*spr_dir+sprite_get_bbox_left(sprite_index)*scale*spr_dir, y-offY*scale+sprite_get_bbox_top(sprite_index)*scale, x-offX*scale*spr_dir+sprite_get_bbox_right(sprite_index)*scale*spr_dir, y-offY*scale+sprite_get_bbox_top(sprite_index)*scale, c_white, c_white);
draw_line_color(x-offX*scale*spr_dir+sprite_get_bbox_right(sprite_index)*scale*spr_dir, y-offY*scale+sprite_get_bbox_top(sprite_index)*scale, x-offX*scale*spr_dir+sprite_get_bbox_right(sprite_index)*scale*spr_dir, y-offY*scale+sprite_get_bbox_bottom(sprite_index)*scale, c_white, c_white);
//only need fix spr_dir for small_sprites? or whats the problem on toon link?
//now works, but shouldnt flip to the left...
*/


var bboxR = bbox_right;
var bboxL = bbox_left;
var bboxT = bbox_top;
var bboxB = bbox_bottom;

if(isChar)
{
    //TODO: give better dimensions to objects
    
    var scaleX = scale * spr_dir;
    var offX = sprite_get_xoffset(sprite_index) * scaleX;
    var offY = sprite_get_yoffset(sprite_index) * scale;
    if(spr_dir == 1)
    {
        bboxR = x-offX+sprite_get_bbox_right(sprite_index)*scaleX;
        bboxL = x-offX+sprite_get_bbox_left(sprite_index)*scaleX;
    }
    else
    {
        bboxL = x-offX+sprite_get_bbox_right(sprite_index)*scaleX;
        bboxR = x-offX+sprite_get_bbox_left(sprite_index)*scaleX;
    }
    bboxT = y-offY+sprite_get_bbox_top(sprite_index)*scale;
    bboxB = y-offY+sprite_get_bbox_bottom(sprite_index)*scale;
}
if(bboxL > other.bboxR
|| bboxR < other.bboxL
|| bboxT > other.bboxB
|| bboxB < other.bboxT)
    return noone;

var xDelta = x - other.xCenter;
//if(xDelta == 0) xDelta = 1;
var yDelta = y - other.yCenter;
//if(yDelta == 0) yDelta = 1;

var xPos = other.xCenter + other.xPosOff + xDelta * other.xPosScale * (other.xPosFlip ? -1 : 1);
var yPos = other.yCenter + other.yPosOff + yDelta * other.yPosScale * (other.yPosFlip ? -1 : 1);
var sprDir = spr_dir * (other.sprFlip ? -1 : 1);
var xScale = scale * other.xDistort * sprDir + other.xDistortDynamic * abs(xDelta) * sprDir;
if(sign(xScale) != sign(sprDir))
    xScale = 0;
//var yScale = other.yDistort * 1 + other.yDistortDynamic * abs(yDelta) * 1;
//if(sign(yScale) != sign(1))
//    yScale = 0;
var yScale = scale * other.yDistort + other.yDistortDynamic * abs(yDelta);
return [xPos, yPos, xScale, yScale];
    

#define maskStart()
//shader_start();
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

if(other.inBackground)
    draw_sprite_ext(other.sprites,other.maskId,other.x,other.y,2,2,0,c_white,other.reflectAlpha);
else
    draw_sprite_ext(other.sprites,other.maskId,78,28,2,2,0,c_white,other.reflectAlpha);

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);//removing this removes black square, but also the masking
gpu_set_alphatestenable(true);

#define maskEnd()
/*
var colorSlot = get_player_color(player);
var shade = 0;
var colR = get_color_profile_slot_r( colorSlot, shade);
var colG = get_color_profile_slot_g( colorSlot, shade);
var colB = get_color_profile_slot_b( colorSlot, shade);
var c = make_color_rgb(colR, colG, colB);
draw_sprite_ext(sprite_index, image_index, xPos, yPos, xScale, other.yDistort, 0, c, 1);
//A) base cast crashes??? prevent it with a case (look color buddy)
//B) color doesnt quite match?
//-> could still try to get it as close as possible? eg pick dominant shade? or somehow redo shader alg
*/
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
//shader_end();
//-> recolors everyone properly, but produces weird black box
//so the alg for palettes apparently changes alpha? idk whats going on

#define remap(value, low1, high1, low2, high2)
return low2 + (value - low1) * (high2 - low2) / (high1 - low1);