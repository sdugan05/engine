#include "Engine.h"

#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>

class Gui 
{
    public:
    Gui(sf::RenderWindow& window, sf::Clock& deltaClock);
    void init();
    void draw();

    bool repopulateBricks;

    void setMousePosition(sf::Vector2i mousePosition);

    sf::Vector2f ballSpeed;

    float angle;

    private:
    sf::RenderWindow* window;
    sf::Clock* deltaClock;

    sf::Vector2i mousePosition;

};