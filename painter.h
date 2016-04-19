#ifndef PAINTER_H
#define PAINTER_H

#include "turtle.h"

class Painter
{
        Turtle* turtle;
public:
        Painter( Turtle* turtle )
                :       turtle(turtle){}

        bool DrawCircle(int, int, int)
        {
                turtle->PenDown();
                return true;
        }
};

#endif // PAINTER_H
