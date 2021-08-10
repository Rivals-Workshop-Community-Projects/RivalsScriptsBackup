

//--------- not used ATM, could work for nspecial and not only dspecial

/*
for(var i = 0; i < 20; i++)
{
    var newX = x + piecesX[i] * spr_dir;
    var newY = y - piecesY[i] - 1;
    
    var vp = instance_create(newX, newY, "obj_article1");
    vp.animOffset = random_func(rando(0*newX*newY), sprite_get_number(sprite_get("pileAirUp")),true);
    vp.animSpd = random_func(rando(1*newX*newY), 3, false) + 1.5;
    print("B");
    if(i == 0)
    {
        pieceArticle = vp;
        
        pieceArticle.colorL = left;
        pieceArticle.colorF = front;
        pieceArticle.colorT = top;
    }
    
    vp.fakeFloorHeight = 1;//random_func(rando(2*newX*newY), 30, true);
    //if(piecesY[i] != 0 && random_func(rando(2*newX*newY), 2, true))
    //	vp.fakeFloorHeight = (random_func(rando(3*newX*newY), 2, true)+1) * 20;//random_func(rando(3*newX*newY), 20, false)+20;
    //if a top one has a high floor, middle one needs too...
    if(piecesY[i] != 0 && piecesX[i] < 20 && piecesX[i] > -20 && random_func(rando(2*newX*newY), 4, true) != 0)
    	vp.fakeFloorHeight = random_func(rando(3*newX*newY), 20, false)+10;
    
    vp.endOffsetX = piecesX[i] * spr_dir;
    vp.endOffsetY = -piecesY[i] - 1;

    vp.spr_dir = random_func(rando(4*newX*newY), 2, true) * 2 - 1;
    vp.drawInfront = piecesInFront[i];//random_func(rando(3), 2, true);
    
    //var rndColor = random_func(rando(5*newX*newY), 100, false);
    //var neededCol = piecesInFront[i] ? front : back;
    var randCol;
    if(piecesInFront[i])
    	randCol = random_func(rando(5*newX*newY), 2, true) ? front : left;
    else
    	randCol = random_func(rando(6*newX*newY), 2, true) ? back : right;
    	
	var articSprite = getPossibleSprite(randCol);
    vp.spr = sprite_get(articSprite);
    vp.mask_index = sprite_get(getMask(articSprite));
    
    vp.hsp = piecesX[i] * 0.09 * spr_dir;
    vp.hsp += dspecialAirValue * 1.25 * sign(vp.hsp);
    vp.vsp = -piecesY[i] * 0.025;

    //vp.parentArticle = pieceArticle;
    vp.isVisual = true;
    if(i==0)vp.mainPiece = true;
	vp.reattachDelay = 60 * 0.7;

    //ds_list_add(pieceArticle.visualPieces, vp);
}

#define getPossibleSprite(col)
{
	//TODO: make more possible than just 3 different edge pieces
	if(col == "white" || col == "red")
		return "pileAirUp";
	if(col == "blue" || col == "yellow")
		return "pileAirUpBlue";
	if(col == "green" || col == "orange")
		return "pileAirUpGreen";
}
#define getMask(col)
{
	//for some reason looks better with same one for all?
	return "pileAirUp_hurt";
	//return col + "_hurt";
}

#define rando(ind)
//make a bit out of player input and return this * ind?
var input =
attack_down+
special_down+
jump_down+
shield_down+
strong_down+
taunt_down+

attack_pressed+
special_pressed+
jump_pressed+
shield_pressed+
up_strong_pressed+
down_strong_pressed+
left_strong_pressed+
right_strong_pressed+
taunt_pressed+

up_down+
down_down+
left_down+
right_down+

up_pressed+
down_pressed+
left_pressed+
right_pressed+

joy_dir+
x+
y+
spr_dir;
//print_debug(down_down + attack_down);
//print_debug(input);

return input * ind;
*/