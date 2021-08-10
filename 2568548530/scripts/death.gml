// called when the character gets KO'd

traumaX = random_func(0,2,false) * 10;
traumaY = random_func(1,2,false) * 10;


shotArticles = false;
canAttack = true;

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

move_cooldown[AT_TAUNT] = 0;
move_cooldown[AT_JAB] = 0;
move_cooldown[AT_DATTACK] = 0;

move_cooldown[AT_UTILT] = 0;
move_cooldown[AT_FTILT] = 0;
move_cooldown[AT_DTILT] = 0;

move_cooldown[AT_USTRONG] = 0;
move_cooldown[AT_FSTRONG] = 0;
move_cooldown[AT_DSTRONG] = 0;



if(pieceArticle && instance_exists(pieceArticle) && pieceArticle != noone)
{
    /*
    for (var i = ds_list_size(pieceArticle.visualPieces) - 1; i >= 0; i--) 
    {
        instance_destroy(pieceArticle.visualPieces[| i]);
        ds_list_delete(pieceArticle.visualPieces, i);
    }

    instance_destroy(pieceArticle); 
    */
    
    
    for (var i = 0; i < ds_list_size(pieceArticle.visualPieces); i++) 
    {
        var p = pieceArticle.visualPieces[| i];
        p.deleted = true;
        p.killAfterFade = true;
        p.doFade = true;
        p.fadeTimeTotal = 90;
    }
    pieceArticle.deleted = true;
    pieceArticle.killAfterFade = true;
    pieceArticle.doFade = true;
    pieceArticle.fadeTimeTotal = 90;
}
pieceArticle = noone;

spawnRepeat = 0;