if collision_line(x, (y - 2), (x + 32), (y - 2), oCharacter, false, true)
    enabled = 1
else
    enabled = 0
if collision_line((x + 8), (y - 2), (x + 24), (y - 2), oCharacter, false, true)
    cansave = 1
else
    cansave = 0
if (enabled == 1 && image_index < (sprite_get_number(sprite_index) - 1))
    image_index += 1
if (enabled == 0 && image_index > 0.2)
    image_index -= 0.2
if (saveenabled == 1 && cansave == 1 && (oCharacter.state == 10 || oCharacter.state == 12) && (oCharacter.statetime >= 10 || oControl.kUp))
{
    if (oControl.mod_insanitymode == 1 || global.enemyNearby || global.saveStationCooldown > 0)
        exit
}
if (oCharacter.state == 33 && distance_to_point(oCharacter.x, oCharacter.y < 64))
    saveenabled = 0
