///#args attack // this line makes code editors not freak out for some reason

//if(TCG_Kirby_Copy !=0 && attack == AT_NSPECIAL){attack = AT_NSPECIAL_2;}
//if(TCG_Kirby_Copy !=0 && attack == AT_FSPECIAL){attack = AT_FSPECIAL_2;}

//Grab stuff
if (nspec_grabbed){
    if (attack_pressed || right_strong_pressed
    || left_strong_pressed || up_strong_pressed || down_strong_pressed
    || is_attack_pressed(DIR_DOWN) || is_attack_pressed(DIR_RIGHT) 
    || is_attack_pressed(DIR_LEFT) || is_attack_pressed(DIR_UP)){
        attack = AT_NSPECIAL;
        window = !consumed_proj ? 5 : 9;
        window_timer = 0; 
        CorrectHurtboxes();
    }
    if (special_pressed || is_special_pressed(DIR_DOWN) || is_special_pressed(DIR_RIGHT) 
    || is_special_pressed(DIR_LEFT) || is_special_pressed(DIR_UP)){
        attack = AT_NSPECIAL;
        window = !consumed_proj ? 6 : 9;
        window_timer = 0; 
        CorrectHurtboxes();
    }
}

if attack == AT_DSPECIAL {
    if free {
        attack = AT_DSPECIAL_AIR
        window = 1
        window_timer = 0
    }
}

if attack == AT_DSPECIAL_AIR {
    //stonevar = random_func( 0, stoneamt, true)
    stonecheck = random_func( 0, 101, true);
	//print(stonecheck);
	if (stone_view_type == 1){
		if stonevar > 18 { stonevar = -1 } else { stonevar++;}
	} else if (stone_view_type == 0){
		if (stonecheck > 96){
			//print("Rare stone transformation!");
			if(stonecheck == 97){
				stonecheckrare = 0;
			} else if(stonecheck == 98){
				stonecheckrare = 1;
			} else if(stonecheck == 99){
				stonecheckrare = 2;
			} else if(stonecheck == 100){
				stonecheckrare = 3;
			}
			switch (stonecheckrare){
				//Walter White (idk why we made a walter white statue Lol!)
				case 0:
				stonevar = 9;
				break;
				//Dream Hatcher
				case 1:
				stonevar = 15;
				break;
				//Mario.
				case 2:
				stonevar = 16;
				break;
				//Master Sword
				case 3:
				stonevar = 17;
				break;
			}
		} else {
			//print("Basic stone transformation. Meh.");
			stonechecknorm = random_func( 0, 16, true);
			if (stonechecknorm < 9){//>
				stonevar = stonechecknorm;
			}
			//because im too lazy to split up the stone transformation strips into a "normal" and "rare" strip, this is how i gotta do things.
			switch (stonechecknorm){
				//Normal Stone Kirby
				case 0:
				stonevar = 0;
				break;
				//64 Stone Kirby
				case 1:
				stonevar = 1;
				break;
				//Moyai
				case 2:
				stonevar = 2;
				break;
				//Kirby Statue
				case 3:
				stonevar = 3;
				break;
				//Macho Man
				case 4:
				stonevar = 4;
				break;
				//Magalor
				case 5:
				stonevar = 5;
				break;
				//when the matter is dark
				case 6:
				stonevar = 6;
				break;
				//Cone Kirby
				case 7:
				stonevar = 7;
				break;
				//Gameboy
				case 8:
				stonevar = 8;
				break;
				//Kragg Rock
				case 9:
				stonevar = 10;
				break;
				//Sandbert
				case 10:
				stonevar = 11;
				break;
				//Zetterburn
				case 11:
				stonevar = 12;
				break;
				//8 Ton Weight
				case 12:
				stonevar = 13;
				break;
				//Brick Block
				case 13:
				stonevar = 14;
				break;
				//Star Block
				case 14:
				stonevar = 18;
				break;
				//Qbby
				case 15:
				stonevar = 19;
				break;
			}
		}
	}

}

if (attack == AT_NSPECIAL){
    switch (TCG_Kirby_Copy){
        case 1:
            attack = AT_COPY_FIRE;
        break; 
        case 2:
            attack = AT_COPY_BEAM;
        break; 
        case 3:
            attack = AT_COPY_RANGER;
        break; 
        case 4:
            attack = AT_COPY_FIGHTER;
        break;
		case 5:
            attack = AT_COPY_SWORD;
        break;
        case 6:
            attack = AT_COPY_WATER;
        break;
		case 7:
            attack = AT_COPY_LEAF;
        break; 
        case 8:
            attack = AT_COPY_ICE;
        break;  
        case 9:
            attack = AT_COPY_TORNADO;
        break; 
        case 10:
            attack = AT_COPY_BOMB;
        break;
        case 11:
            attack = AT_COPY_MIKE;
        break;
        case 12:
            attack = AT_COPY_ABYSS;
        break;
        case 13:
            attack = AT_COPY_ESP;
        break;
		case 14:
            attack = AT_COPY_DRILL;
        break;
		case 15:
            attack = AT_COPY_SPARK;
        break; 
    }
}

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}

