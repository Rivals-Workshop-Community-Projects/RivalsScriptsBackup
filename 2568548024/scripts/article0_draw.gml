//

if(variable_instance_exists(self, "isReflection") && isReflection)
    DrawReflection();
else
    draw_sprite_ext(spr, sprInd + animTime * animSpd, x, y, scale*flipX, scale, rot, c_white, alpha);


#define DrawReflection()
{
    maskStart();
            
    with(oPlayer)
    {
        if(state != PS_DEAD && state != PS_RESPAWN)
            drawEntityReflection(true);
    }

    with(pet_obj)
        drawEntityReflection(false);

    maskEnd();

    if(inBackground)
        draw_sprite_ext(sprites,overlayId,x,y,2,2,0,overlayColor,overlayAlpha);
    else
        draw_sprite_ext(sprites,overlayId,78,28,2,2,0,overlayColor,overlayAlpha);
}

#define drawEntityReflection(isChar)
{
    var scale = 1;
    if(isChar && small_sprites)
        scale = 2;

    var xDelta = x - other.xCenter;
    var yDelta = y - other.yCenter;

    var sprDir = spr_dir * other.sprFlip;
    var xScale = scale * other.xDistort * sprDir + other.xDistortDynamic * abs(xDelta) * sprDir;
    if(sign(xScale) != sign(sprDir))
        return;
        
    var xPos = other.xCenter + other.xPosOff + xDelta * other.xPosScale * other.xPosFlip;
    var yPos = other.yCenter + other.yPosOff + yDelta * other.yPosScale * other.yPosFlip;
    draw_sprite_ext(
        sprite_index,
        image_index,
        xPos, 
        yPos,
        xScale,
        scale * other.yDistort + other.yDistortDynamic * abs(yDelta),
        0,
        other.reflectColor,
        1);
}

#define maskStart()
//shader_start();
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);

if(inBackground)
    draw_sprite_ext(sprites,maskId,x,y,2,2,0,c_white,reflectAlpha);
else
    draw_sprite_ext(sprites,maskId,78,28,2,2,0,c_white,reflectAlpha);

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);//removing this removes black square when using shader_start(), but also breaks the masking
gpu_set_alphatestenable(true);

#define maskEnd()
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
//shader_end();//recolors everyone properly, but produces weird black box
