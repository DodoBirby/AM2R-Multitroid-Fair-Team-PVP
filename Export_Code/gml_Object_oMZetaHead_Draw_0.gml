if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
{
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_set(oControl.ZetaPalette, 1, 0)
}
if (head_spr != -4)
    draw_sprite_ext(head_spr, head_frame, x, y, facing, 1, image_angle, -1, 1)
shader_reset()
