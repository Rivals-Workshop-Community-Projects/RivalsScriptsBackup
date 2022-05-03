//
if(doDrawDebug)
{
    for (var i = 0; i < array_length_1d(debugX); i++)
        draw_debug_text(debugX[i], debugY[i], string(debugString[i]));
}

//game over / tetris / full clear
if(fullScreenAnim)
{
	var offX = -118;
	var offY = -20;
	if(!fullScreenAnimMoveWithCamera)
	{
		offX -= view_get_xview()-235;
		offY -= view_get_yview()-244 + (fullClear ? 192 : (firstClearedRowY*64));
	}
	if(fullScreenTimer < 10)
	{
		draw_sprite_ext(fullScreenSprite, 0, x+161-300+fullScreenTimer*30+offX, y+offY, 2, 2, 0, c_white, fullScreenTimer/10);
		draw_sprite_ext(fullScreenSprite, 0, x+161+300-fullScreenTimer*30+offX, y+offY, 2, 2, 0, c_white, fullScreenTimer/10);
	}
	else if(fullScreenTimer < 15)
		draw_sprite_ext(fullScreenSprite, 2, x+161+offX, y+offY, 2, 2, 0, c_white, 1);
	else if(fullScreenTimer > 60)
	{
		var fullScreenTimerCut = fullScreenTimer-60;
		draw_sprite_ext(fullScreenSprite, 0, x+161-fullScreenTimerCut*30+offX, y+offY, 2, 2, 0, c_white, 1-fullScreenTimerCut/10);
		draw_sprite_ext(fullScreenSprite, 0, x+161+fullScreenTimerCut*30+offX, y+offY, 2, 2, 0, c_white, 1-fullScreenTimerCut/10);
	}
	else
		draw_sprite_ext(fullScreenSprite, 1, x+161+offX, y+offY, 2, 2, 0, c_white, 1);
	fullScreenTimer++;
}

if(!is_aether_stage() && !debugControl) //AI doesnt need the UI + its too performance heavy
	return;

var logoAlpha = 1;
if(rivalsGameOver)
	logoAlpha = ease_linear(1, 0, rivalsGameOverTimer, 15);
if(totalPlayers == 1)
	draw_sprite_ext(sprite_get("tetrisLogo"), 0, 460, 498, 2, 2, 0, c_white, logoAlpha);
if(totalPlayers == 2)
	draw_sprite_ext(sprite_get("tetrisLogo"), 0, 340, 498, 2, 2, 0, c_white, logoAlpha);
if(totalPlayers == 3)
	draw_sprite_ext(sprite_get("tetrisLogo"), 0, 222, 498, 2, 2, 0, c_white, logoAlpha);
if(totalPlayers == 4)
	draw_sprite_ext(sprite_get("tetrisLogo"), 0, 103, 498, 2, 2, 0, c_white, logoAlpha);
	
if(!drawHud)
	return;

if(rivalsGameOver)
{
	var delay = 20;
	if(rivalsGameOverTimer > delay)
	{
		hudBoardAlpha = ease_linear(hudBoardAlphaMax*10, 0, rivalsGameOverTimer-delay, 15)/10;
		hudTextAlpha = ease_linear(hudTextAlphaMax*10, 0, rivalsGameOverTimer-delay, 15)/10;
	}
}

draw_text_color(x+152, y-178, "Score: " + string(score), hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextAlpha);
draw_text_color(x+150, y-180, "Score: " + string(score), hudTextColor, hudTextColor, hudTextColor, hudTextColor, hudTextAlpha);
draw_text_color(x+152, y-198, "Level: " + string(level), hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextAlpha);
draw_text_color(x+150, y-200, "Level: " + string(level), hudTextColor, hudTextColor, hudTextColor, hudTextColor, hudTextAlpha);
//TODO: proper outlined text? bcz can be hard to see sometimes
//		but drawing 8 times is too resource heavy... could use draw_debug_text, but no transparency...

if(hudTextComboTimer < hudTextDurationTotal)
{
	if(hudTextComboTimer < hudTextDurationStart)
		hudTextComboAlpha = ease_expoOut(0, 1, hudTextComboTimer, hudTextDurationStart) * hudTextAlpha;
	else if (hudTextComboTimer >= hudTextDurationStartAndDelay)
		hudTextComboAlpha = ease_cubeOut(1, 0, hudTextComboTimer - hudTextDurationStartAndDelay, hudTextDurationTotal) * hudTextAlpha;
	hudTextComboTimer++;
	draw_text_color(x+152, y-158, hudTextComboString, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextComboAlpha);
	draw_text_color(x+150, y-160, hudTextComboString, hudTextColor, hudTextColor, hudTextColor, hudTextColor, hudTextComboAlpha);
}
if(hudTextBtbTimer < hudTextDurationTotal)
{
	if(hudTextBtbTimer < hudTextDurationStart)
		hudTextBtbAlpha = ease_expoOut(0, 1, hudTextComboTimer, hudTextDurationStart) * hudTextAlpha;
	else if (hudTextBtbTimer >= hudTextDurationStartAndDelay)
		hudTextBtbAlpha = ease_cubeOut(1, 0, hudTextBtbTimer - hudTextDurationStartAndDelay, hudTextDurationTotal) * hudTextAlpha;
	hudTextBtbTimer++;
	draw_text_color(x+152, y-138, "Back to back!", hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextBtbAlpha);
	draw_text_color(x+150, y-140, "Back to back!", hudTextColor, hudTextColor, hudTextColor, hudTextColor, hudTextBtbAlpha);
}
if(hudTextTspinTimer < hudTextDurationTotal)
{
	if(hudTextTspinTimer < hudTextDurationStart)
		hudTextTspinAlpha = ease_expoOut(0, 1, hudTextComboTimer, hudTextDurationStart) * hudTextAlpha;
	else if (hudTextTspinTimer >= hudTextDurationStartAndDelay)
		hudTextTspinAlpha = ease_cubeOut(1, 0, hudTextTspinTimer - hudTextDurationStartAndDelay, hudTextDurationTotal) * hudTextAlpha;
	hudTextTspinTimer++;
	draw_text_color(x+152, y-118, hudTextTspinString, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextColorBg, hudTextTspinAlpha);
	draw_text_color(x+150, y-120, hudTextTspinString, hudTextColor, hudTextColor, hudTextColor, hudTextColor, hudTextTspinAlpha);
}
//TODO: do these as sprites + animation?


draw_sprite_ext(sprite_get("board"), 0, hudBoardX, hudBoardY, 1, 1, 0, c_white, hudBoardAlpha);
//TODO: could show line where camera is? or full camera rect?

for(var i = 0; i < height; i++)
	for(var m = 0; m < width; m++)
		if (field[m, i] > 0 && !field[m, i].cleared)
			drawRect(hudBoardOriginX + m * hudSpacing, hudBoardOriginY + i * hudSpacing, field[m, i].typCol, 0);

//Current piece
if(pieceCurr != noone)
    render(pieceCurr, 0, 0, 0);
if(ghostCurr != noone)
	render(ghostCurr, 0, 0, rivalsGameOver ? 0 : 0.6);
if(pieceHeld != noone)
	draw_sprite_ext(sprite_get("previewPieces"), pieceHeld.typ, hudBoardHeldX, hudBoardHeldY, 1, 1, 0, c_white, hudBoardAlpha);

//preview pieces
for(var i = 0; i < ds_list_size(pieceQueue); i++)
	if(i < 5)
		renderPreview(i, pieceQueue[|i], "piece");


#define renderPreview(yOff, typ, spr)
draw_sprite_ext(sprite_get("previewPieces"), typ, hudBoardPreviewX+1, hudBoardPreviewY + 8 + (yOff*3) * hudPreviewSpacing, 1, 1, 0, c_white, hudBoardAlpha);
/*
for(var i = 0; i < 4; i++)
	for(var j = 0; j < 4; j++)
        if(contains(pieces[typ, 0], i + 4 * j))
			drawRect(hudBoardPreviewX + i * hudPreviewSpacing, 
					hudBoardPreviewY + (yOff*3 + j) * hudPreviewSpacing, typ, spr, true);
for(var i = 0; i < 4; i++)
	drawRect(hudBoardPreviewX + floor(pieces[typ, 0][i] % 4) * hudPreviewSpacing, 
			hudBoardPreviewY + (floor(pieces[typ, 0][i] / 4) + yOff*3) * hudPreviewSpacing, typ, spr, true);*/

    			
#define render(piece, extraX, extraY, alphaOverride)
/*var piece0GridX = piece.articles[0].gridX - floor(pieces[piece.typ, piece.rotation][0] % 4);
var piece0GridY = piece.articles[0].gridY - floor(pieces[piece.typ, piece.rotation][0] / 4);
for(var i = 0; i < 4; i++)
	for(var j = 0; j < 4; j++)
        if(contains(pieces[piece.typ, piece.rotation], i + 4 * j))
			drawRect(hudBoardOriginX + extraX + (piece0GridX + i) * hudSpacing, 
					hudBoardOriginY + extraY + (piece0GridY + j) * hudSpacing, piece.typ, spr);
for (var i = 0; i < 16; i++)
    if(contains(pieces[piece.typ, piece.rotation], i))
    	drawRect(hudBoardOriginX + extraX + (piece.centerX + floor(i % 4)) * hudSpacing, 
    			hudBoardOriginY + extraY + (piece.centerY + floor(i / 4)) * hudSpacing, piece.typ, spr);*/
for(var i = 0; i < 4; i++)
	drawRect(hudBoardOriginX + extraX + (piece.centerX + floor(pieces[piece.typ, piece.rotation][i] % 4)) * hudSpacing, 
			hudBoardOriginY + extraY + (piece.centerY + floor(pieces[piece.typ, piece.rotation][i] / 4)) * hudSpacing, piece.typ, alphaOverride);

#define drawRect(xx, yy, typ, alphaOverride)
draw_sprite_ext(sprite_get("piece"), typ, xx-1, yy-1, 1, 1, 0, c_white, alphaOverride != 0 ? alphaOverride : hudBoardAlpha);
/*if(!optimized)
	draw_sprite_ext(sprite_get(spr), 0, xx-1, yy-1, 1, 1, 0, pieceColorValues[typ], hudBoardAlpha);
else
{
	var col = pieceColorValues[typ];
	//draw_rectangle_color(xx, yy, xx + hudSpacingMinus1, yy + hudSpacingMinus1, c_black,c_black,c_black,c_black,true);
	//draw_rectangle_color(xx, yy, xx + hudSpacingMinus1, yy + hudSpacingMinus1, col,col,col,col,false);
	draw_rectangle_color(xx, yy, xx + hudSpacingMinus2, yy + hudSpacingMinus2, col,col,col,col,false);
	//-> more efficient on fps, but no way to make ghost piece transparent?
	//seems like for many rectangle drawn, primites faster than sprite... but for preview above better to draw whole sprite
	//--> TODO: draw whole sprite of placed pieces until line clear breaks them?

	//actually maybe its not faster? also need transparency for everything
}*/

#define contains(arr, n)
var loop = 0;
repeat (array_length_1d(arr)) if (arr[loop++] == n) return true;
return false;