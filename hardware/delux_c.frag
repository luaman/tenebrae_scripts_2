uniform sampler2D lightMap;
uniform sampler2D deluxMap;
uniform sampler2D normalMap;
uniform sampler2D baseMap;
uniform sampler2D glossmap;

uniform vec3 eyePos;

void main(void)
{
    // Get the worldspace delux
    vec3 wDelux = 2.0 * texture2D(deluxMap, gl_TexCoord[1].xy).xyz - 1.0;
    //Put into tangent space
    vec3 tDelux;
    tDelux.x = dot(wDelux, gl_TexCoord[2].xyz);
    tDelux.y = dot(wDelux, gl_TexCoord[3].xyz);
    tDelux.z = dot(wDelux, gl_TexCoord[4].xyz);
    tDelux = normalize(tDelux);

    // Get the normal from normal map lookup
    vec4 matNormal = texture2D(normalMap, gl_TexCoord[0].xy);
    // Normalize normal part
    matNormal.xyz = 2.0 * matNormal.xyz - 1.0;

    // normal . light vector
    float diffdot = clamp(dot(tDelux, matNormal.xyz),0.0,1.0);

    // calculate halfvector, first eye
    vec3 halfvec = eyePos - gl_TexCoord[5].xyz;

    vec3 trans;
    trans.x = dot(halfvec, gl_TexCoord[2].xyz);
    trans.y = dot(halfvec, gl_TexCoord[3].xyz);
    trans.z = dot(halfvec, gl_TexCoord[4].xyz);
    halfvec = normalize(trans);
    // Final halfvec from eye and light vectors
    halfvec = (halfvec + tDelux) * 0.5;

    float specdot = clamp(dot(halfvec, matNormal.xyz),0.0,1.0);
    specdot = pow(specdot, 16.0);

    // mul by gloss
    vec3 gloss = texture2D(glossmap, gl_TexCoord[0].xy).xyz;
    gloss = gloss * specdot;

    vec3 base = texture2D(baseMap, gl_TexCoord[0].xy).xyz;
    vec3 lmap = texture2D(lightMap, gl_TexCoord[1].xy).xyz;

    vec3 res = ((base * diffdot) + gloss) * lmap;
    gl_FragColor = res.xyzz;
}
		   
