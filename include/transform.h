#ifndef TRANSFORM_H 
#define TRANSFORM_H 

#include <glad/glad.h> 
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

using namespace std;


class Transform 
{

private:
    glm::vec3 position; 
public:

    // constructor, expects a filepath to a 3D model.
    Transform()
    {
        position = glm::vec3(1.0f);
    }

    glm::vec3  getPosition()
    {
        return position;
    }

    void setPosition(glm::vec3 p)
    {
        position = p;
    };


    
    };


#endif