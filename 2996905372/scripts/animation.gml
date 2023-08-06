// animation.gml

// ustrong image_index change while charging

var frameStart = 3;
var numOfAnimFrames = 4;
var ingameFrameRate = 3;
if state== PS_ATTACK_GROUND && attack == AT_USTRONG && window == 1 && window_timer == 11 { //Ustrong windup
    image_index = frameStart + (strong_charge/ingameFrameRate)%numOfAnimFrames; //frameStart is the frame_start, numOfAnimFrames is the number of frames, 
                                           //3 is the in-game frames per animation frame
}

switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

// Strongs Armor Rune (this code is in here instead of attack_update because that script runs one frame too late)
if (strongsArmorCounterRune){
	if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
		if (window == 1 || window == 2){
			super_armor = true;
		} else {
			super_armor = false;
		}
	}
}