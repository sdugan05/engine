#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>

class Gui {
    public:
    Gui(sf::RenderWindow& window, sf::Clock& deltaClock);
    void init();
    void draw();

    void setMousePosition(sf::Vector2i mousePosition);

    int ballSpeed;

    private:
    sf::RenderWindow* window;
    sf::Clock* deltaClock;

    sf::Vector2i mousePosition;
};