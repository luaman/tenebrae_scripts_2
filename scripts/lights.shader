textures/lights/default
{
	//Shader loaded by the engine when no shader is specified for a light
}

textures/penta/pent_light01
{
	{
		//A normal texture "projected" along the direction specified by the light
		//default is up-down
		//I'll add more projection options "soon"
		tcMod rotate 50
		map "textures/lights/fanblade.tga"
	}		
}

textures/penta/pent_light02
{
	//multiple layers should work (on gf4) radeons == todo
	{
		map cube "cubemaps/16"
	}
	{
		map cube "cubemaps/17"
	}				
}

textures/lights/tb_lightgrid01s
{
	qer_nocarve
	qer_trans 0.35
	qer_editorimage "textures/common/rtlightfilter.tga"

	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	
	{
		map "textures/lights/tb_lightgrid01.tga"
	}		
}
