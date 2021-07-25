// called when the character gets KO'd

//refill water and steam
meter_water = 75;
meter_steam = 25;

limitBreak = false;
limitBreakCharge = 0;
allRunes = false;

if (!abyssEnabled) {
    runeA = false;
    runeB = false;
    runeC = false;
    runeD = false;
    runeE = false;
    runeF = false;
    runeG = false;
    runeH = false;
    runeI = false;
    runeJ = false;
    runeK = false;
    runeL = false;
    runeM = false;
    runeN = false;
    runeO = false;
    runesUpdated = true;
}

with obj_article1 {
    if player == other.player {
        dissolve = true;
    }
}

move_cooldown[AT_DSPECIAL] = 0;