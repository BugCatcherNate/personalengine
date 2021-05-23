#include <iostream>
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include <glm/glm.hpp>
#include <vector>

using namespace std;

int main(int, char **)
{

    Assimp::Importer importer;

    const aiScene* scene = importer.ReadFile("/home/nathan/cube.obj", aiProcess_Triangulate | aiProcess_GenSmoothNormals | aiProcess_FlipUVs | aiProcess_CalcTangentSpace);
    // check for errors
    if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode) // if is Not Zero
    {
        cout << "ERROR::ASSIMP:: " << importer.GetErrorString() << endl;
    }
    for (int i = 0; i < scene->mMeshes[0]->mNumVertices; i++){ 

          glm::vec3 vector; // we declare a placeholder vector since assimp uses its own vector class that doesn't directly convert to glm's vec3 class so we transfer the data to this placeholder glm::vec3 first.
            // positions
            vector.x = scene->mMeshes[0]->mVertices[i].x;
            vector.y = scene->mMeshes[0]->mVertices[i].y;
            vector.z = scene->mMeshes[0]->mVertices[i].z;

            cout << vector.x << ", " << vector.y << ", " << vector.z << endl;
            //cout << scene->mMeshes[0]->mVertices[i].x << endl;
    
    }

}
