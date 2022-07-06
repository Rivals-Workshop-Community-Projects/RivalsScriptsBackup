// called when the character gets KO'd

with (oPlayer) {
    if (id != other.id) {
        if (SpamNeoString == true) {
            SpamNeoString = false; // If true the visual will be created
            SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
    
            SpamNeoStringOppLineVsp = 0;
            SpamNeoStringOppLineHsp1 = 0;
            
            SpamNeoStringPosYi = 0;
            SpamNeoStringPosXi = 0;
            SpamNeoStringPosYf = 0;
            SpamNeoStringPosXf = 0;
            
            SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn
            
            SpamNeoStringStop = true;
            SpamNeoStringStopTimer = 0;
            
            // S. Poison
            
            SpamNeoSPoison = false;
            SpamNeoSPoisonTimer = 0;
            SpamNeoSPoisonOutlineTimer = 0;
            SpamNeoSPoisonOutlineCol1 = 0;
            SpamNeoSPoisonOutlineCol2 = 0;
            SpamNeoSPoisonOutlineFix = false;
            
            // Snap String
            
            SpamNeoSnap = false;
            SpamNeoSnapCount = 0; // So that time runs ever 2 frames
            SpamNeoSnapTimer = 0;
            SpamNeoSnapAnim = true;
            SpamNeoSnapAnimEnd = false;
            SpamNeoSnapPratTime = 0; // Value 1-5
            SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
            SpamNeoSnapPrat = false;
            SpamNeoSnapNormPratland = 0;
            
            other.SpamNeoPullPower = 0; // Set between 1-5
            other.SpamNeoPullX = 0;
            other.SpamNeoPullY = 0;
            other.SpamNeoPullON = false;
            
            other.SpamNeoSnappingHitbox = false; // When true creates a hitbox
            other.SpamNeoSnappingXp1 = 0;
            other.SpamNeoSnappingYp1 = 0;
            other.SpamNeoSnappingXp2 = 0;
            other.SpamNeoSnappingYp2 = 0;
            other.SpamNeoSnappingXp3 = 0;
            other.SpamNeoSnappingYp3 = 0;
            other.SpamNeoSnappingXp4 = 0;
            other.SpamNeoSnappingYp4 = 0;
            
            SpamNeoStringPlayerId = 0;
        }
    }
}