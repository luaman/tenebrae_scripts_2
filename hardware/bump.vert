// Tenebrae bumpmapping without light filter vertex shader
uniform vec3 lightPos;
uniform vec3 eyePos;

void main(void)
{
    gl_Position = ftransform();
    gl_TexCoord[0] = gl_MultiTexCoord0;
    vec3 lightVec = normalize(lightPos - gl_Vertex.xyz);
    vec3 eyeVec = normalize(eyePos - gl_Vertex.xyz);
    vec3 halfVec = (lightVec + eyeVec) * 0.5;
    gl_TexCoord[1].x = dot(lightVec, gl_MultiTexCoord1.xyz);
    gl_TexCoord[1].y = dot(lightVec, gl_MultiTexCoord2.xyz);
    gl_TexCoord[1].z = dot(lightVec, gl_MultiTexCoord3.xyz);
    gl_TexCoord[2].x = dot(halfVec, gl_MultiTexCoord1.xyz);
    gl_TexCoord[2].y = dot(halfVec, gl_MultiTexCoord2.xyz);
    gl_TexCoord[2].z = dot(halfVec, gl_MultiTexCoord3.xyz);
    gl_TexCoord[3] = gl_TextureMatrix[2] * gl_Vertex;
    gl_FrontColor = gl_Color;
}
