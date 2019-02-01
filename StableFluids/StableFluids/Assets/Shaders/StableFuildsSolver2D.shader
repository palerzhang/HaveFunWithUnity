// This shader is the solver of 2D Navier-Stokes equation using stable fluid scheme.
// For detail of stable fuild scheme, you can refer to 
//	Stam J. Stable fluids[C]//Proceedings of the 26th annual conference on Computer graphics and interactive techniques. ACM Press/Addison-Wesley Publishing Co., 1999: 121-128.
Shader "Custom/StableFuildsSolver2D" 
{
	Properties
	{
		// The fluid data contains the velocity data (u,v) and density of the fluid (d)
		// r : u 
		// g : v
		// b : d
		// a : remained
		_FluidData ("Fluid Data", 2D) = "white" {}
	}
	SubShader 
	{
		CGINCLUDE

		#include "UnityCG.cginc"

		sampler2D _FluidData;
		float2 _FluidData_TexelSize;

		ENDCG

		ZTest Always Cull Off ZWrite Off

		Pass // 0 - add
		{
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag

			ENDCG
		}

		Pass // 1 - diffuse
		{
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag

			ENDCG
		}

		Pass // 2 - advection
		{
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag

			ENDCG
		}

		Pass // 3 - projection
		{
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag

			ENDCG
		}
	}
	FallBack "Diffuse"
}
