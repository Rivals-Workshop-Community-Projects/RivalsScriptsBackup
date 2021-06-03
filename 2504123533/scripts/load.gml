small_sprites=true;
canDraw = false;

sprite_change_offset("idle", 31, 55);//-------
sprite_change_offset("bighurt", 28, 55);//-------
sprite_change_offset("hurt", 22, 50);//-------
sprite_change_offset("crouch", 28, 55);//-------
sprite_change_offset("walk", 29, 59);//-------
sprite_change_offset("walkturn", 28, 55);//-------
sprite_change_offset("dash", 32, 50);//-------
sprite_change_offset("dashstart", 29,59);//-------
sprite_change_offset("dashstop", 28, 55);//-------
sprite_change_offset("dashturn", 28, 55);//-------

sprite_change_offset("jumpstart", 28, 64);//-------
sprite_change_offset("jump", 32, 64);//-------
sprite_change_offset("doublejump", 32, 64);
sprite_change_offset("walljump", 24, 56);//-------
sprite_change_offset("pratfall", 28, 56);//-------
sprite_change_offset("land", 32, 56);//-------
sprite_change_offset("landinglag", 32, 56);//-------

sprite_change_offset("parry", 43, 64);//-------
sprite_change_offset("roll_forward", 32, 58);//-------
sprite_change_offset("roll_backward", 32, 58);//-------
sprite_change_offset("airdodge", 32, 64);//-------
sprite_change_offset("waveland", 28, 56);//-------
sprite_change_offset("tech", 32, 62);

sprite_change_offset("jab", 52, 64,true);
sprite_change_offset("dattack", 35, 57,true);//-------
sprite_change_offset("ftilt", 68, 96,true);//-------
sprite_change_offset("dtilt", 27, 40,true);//-------
sprite_change_offset("utilt", 42, 55,true);//-------
sprite_change_offset("nair", 64, 84,true);//-------
sprite_change_offset("fair", 47, 67,true);//-------
sprite_change_offset("bair", 58, 63,true);//-------
sprite_change_offset("uair", 36, 61,true);
sprite_change_offset("dair", 64, 84,true);//-------
sprite_change_offset("fstrong", 35, 51,true);//-------
sprite_change_offset("fstrongCharged", 35, 51,true);//-------
sprite_change_offset("fstrongGooCharged", 35, 51,true);//-------
sprite_change_offset("ustrong", 64, 128,true);//-------
sprite_change_offset("ustrongCharged", 64, 128,true);//-------
sprite_change_offset("ustrongGooCharged", 64, 128,true);//-------
sprite_change_offset("dstrong", 64, 64,true);//-------
sprite_change_offset("dstrongCharged", 64, 64,true);//-------
sprite_change_offset("dstrongGooCharged", 64, 64,true);//-------
sprite_change_offset("nspecial", 32, 56,true);//-------
sprite_change_offset("fspecial", 40, 70,true);
sprite_change_offset("uspecial", 40, 45,true);
sprite_change_offset("dspecial", 64, 95,true);
sprite_change_offset("taunt", 33, 70,true);//-------

sprite_change_offset("plat", 48, 56);

sprite_change_offset("1", 24, 71);
sprite_change_offset("2", 24, 71);

sprite_change_offset("bubbles", 8, 8);
sprite_change_offset("sting", 52, 52);
sprite_change_offset("splattersplash", 47, 46);
sprite_change_offset("cauldronStarFX", 54, 54);
sprite_change_offset("cauldronTideAttack", 24,18);
sprite_change_offset("cauldronTideAttack2", 24, 18);
sprite_change_offset("bubblepop", 12, 12);
sprite_change_offset("jellycauldron_explosion", 90, 96);

//potion sprites
potTypes = ["potion","cauldron","tiny"];
potNames = ["Urchin","Zap","Jelly","Tide","Star","Strong"];
for(var i=0; i<array_length(potNames); i++)
{
	var n = potNames[i];

	sprite_change_offset(potTypes[0] + n, 9,18);
	
	if n == "Strong"
	{
		sprite_change_offset(potTypes[1] + n + "Up", 24,48);
		sprite_change_offset(potTypes[1] + n + "Down", 24,48);
		sprite_change_offset(potTypes[1] + n + "Forward", 24,48);
	}
	else
		sprite_change_offset(potTypes[1] + n, 16,32);
		
	sprite_change_offset(potTypes[2] + n, 5,11);
}

//extra potion sprites
sprite_change_offset("cauldronTideAttack",16,32);
sprite_change_offset("cauldronJellyAttack",32,32);
sprite_change_offset("cauldronStarAttack",52,51);
sprite_change_offset("cauldronUrchinAttack",32,32);
sprite_change_offset("cauldronUrchinAttackMask",12,12);
sprite_change_offset("cauldronZapAttack",48,80);
sprite_change_offset("cauldronMorph",64,112);

//ui Sprites
sprite_change_offset("uiWheel",42,0);
sprite_change_offset("uiArrow",6,6);

//hud sprites
sprite_change_offset("hudBase",0,18);
sprite_change_offset("hudBar",104,9);
sprite_change_offset("hudEnd",2,0);
sprite_change_offset("hudEnd2",0,2);
sprite_change_offset("hudBubble",5,5);

//hehehe
set_victory_bg( sprite_get( "visselle_victorybg" ));
set_victory_theme( sound_get( "victory_visselle" ));