#include <GLFW/glfw3.h>
#include <iostream>
#include <vector>
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include <glm/glm.hpp>
#include <string>

using namespace std;

struct Vertex {

    glm::vec3 Positions;

};

class Model {
    public:
        vector<Vertex> vertices;
        vector<unsigned int> indices;

    Model(string path){
         Assimp::Importer importer;

    const aiScene* scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_GenSmoothNormals | aiProcess_FlipUVs | aiProcess_CalcTangentSpace);
    // check for errors
    if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode) // if is Not Zero
    {
        cout << "ERROR::ASSIMP:: " << importer.GetErrorString() << endl;
    }
    for (int i = 0; i < scene->mMeshes[0]->mNumVertices; i++){ 
         Vertex vertex;
          glm::vec3 vector; // we declare a placeholder vector since assimp uses its own vector class that doesn't directly convert to glm's vec3 class so we transfer the data to this placeholder glm::vec3 first.
            // positions
            vector.x = scene->mMeshes[0]->mVertices[i].x;
            vector.y = scene->mMeshes[0]->mVertices[i].y;
            vector.z = scene->mMeshes[0]->mVertices[i].z;

            vertex.Positions = vector;

            vertices.push_back(vertex);
            //cout << scene->mMeshes[0]->mVertices[i].x << endl;
    
    }   
    
      for(unsigned int i = 0; i < scene->mMeshes[0]->mNumFaces; i++)
        {
            aiFace face = scene->mMeshes[0]->mFaces[i];
            // retrieve all indices of the face and store them in the indices vector
            for(unsigned int j = 0; j < face.mNumIndices; j++)
                indices.push_back(face.mIndices[j]);        
        }
 

    }

};