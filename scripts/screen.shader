//
// Shaders used by the menus' console etc...
//	Note: Some of the filenames are hardcoded in the engine but of course you can change the looks in the shader
//

//
// Begin of hardcoded shaders
//

screen/conback {	
	{
		map textures/menus/noise.tga
	}		
}

screen/disc {	
	{
		map textures/liquids/tb_lava01.tga
		tcMod scroll -0.1 -0.05
		tcMod rotate 0.25
	}
	{
		map textures/liquids/tb_lava01.tga
		blendfunc add
		tcMod scroll 0.05 0.1
		tcMod scale 0.5 0.5
	}
}

screen/backtile {	
	{
		map textures/liquids/tb_lava01.tga
		tcMod scroll -0.1 -0.05
		tcMod rotate 0.25
	}
	{
		map textures/liquids/tb_lava01.tga
		blendfunc add
		tcMod scroll 0.05 0.1
		tcMod scale 0.5 0.5
	}
}

screen/ram {
	{
		map textures/liquids/tb_lava01.tga
		tcMod scroll -0.1 -0.05
		tcMod rotate 0.25
	}
	{
		map textures/liquids/tb_lava01.tga
		blendfunc add
		tcMod scroll 0.05 0.1
		tcMod scale 0.5 0.5
	}
}

screen/net {
	{
		map textures/liquids/tb_lava01.tga
		tcMod scroll -0.1 -0.05
		tcMod rotate 0.25
	}
	{
		map textures/liquids/tb_lava01.tga
		blendfunc add
		tcMod scroll 0.05 0.1
		tcMod scale 0.5 0.5
	}
}

screen/turtle {
	{
		map textures/liquids/tb_lava01.tga
		tcMod scroll -0.1 -0.05
		tcMod rotate 0.25
	}
	{
		map textures/liquids/tb_lava01.tga
		blendfunc add
		tcMod scroll 0.05 0.1
		tcMod scale 0.5 0.5
	}
}

//
// End of hardcoded shaders
//

//
// The demo menu shaders
//

menu/focus {	
	{
		blendfunc add
		map textures/menus/borderradar.tga
		tcMod scale 1 1			
		tcMod scroll -2 0
	}
	{
		blendfunc add
		map textures/menus/borderglow.tga
		tcMod scale 8 1		
		tcMod scroll 0.05 0
	}	
}

menus/video {
	{
		map video/gba_ad.roq
	}
}

menus/banner {
	{
		map textures/menus/tenebrae2.tga
	}
}

menus/col1 {
	{
		map textures/menus/black.tga
	}
}

menus/col2 {
	{
		map textures/menus/gray_dark.tga
	}
}

menus/col3 {
	{
		map textures/menus/gray_light.tga
	}
}