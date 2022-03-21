#include "Input.h"

Input::Input(sf::RenderWindow& window)
{
    this->window = &window;
}

void Input::update()
{
    mousePosition = sf::Mouse::getPosition(*window);

    leftMouse = sf::Mouse::isButtonPressed(sf::Mouse::Left);
    rightMouse = sf::Mouse::isButtonPressed(sf::Mouse::Right);
}

sf::Vector2i Input::getMousePosition()
{
    return mousePosition;
}

bool Input::getLeftMouse()
{
    return leftMouse;
}

bool Input::getRightMouse()
{
    return rightMouse;
}