#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/System/Clock.hpp>

class Input {
    public:
    sf::Vector2i mousePosition;

    Input(sf::RenderWindow& window);
    void update();

    sf::Vector2i getMousePosition();

    bool getLeftMouse();
    bool getRightMouse();


    private:
    sf::RenderWindow* window;
    bool leftMouse;
    bool rightMouse;

};