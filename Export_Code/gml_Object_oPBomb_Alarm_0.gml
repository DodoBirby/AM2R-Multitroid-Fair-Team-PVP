if (special == 0)
{
    expl = instance_create(x, y, oPBombExpl)
    expl.myid = 0
    expl = instance_create(x, y, oPBombExpl)
    expl.myid = 0
    expl.image_angle = 90
    expl = instance_create(x, y, oPBombExpl)
    expl.myid = 0
    expl.image_angle = 180
    expl = instance_create(x, y, oPBombExpl)
    expl.myid = 0
    expl.image_angle = 270
    sfx_play(sndPBombExpl)
}
else
    instance_create(x, y, oQueenFinalExplosion)
instance_destroy()
