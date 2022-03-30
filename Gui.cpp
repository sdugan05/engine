#include "Gui.h"
#include <math.h>

Gui::Gui(sf::RenderWindow& window, sf::Clock& deltaClock)
{
    this->window = &window;
    this->deltaClock = &deltaClock;
    this->ballSpeed = sf::Vector2f(100, 100);
}

void Gui::init()
{
    ImGui::SFML::Init(*window);
}

void Gui::draw() 
{
    ImGui::SFML::Update(*window, deltaClock->restart());

    ImGui::Begin("Debug");

    ImGui::SetWindowPos(ImVec2(0, 0));

    ImGui::SetWindowSize(ImVec2(350, 70));

    ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);

    ImGui::Text("Mouse Position: (%i, %i)", mousePosition.x, mousePosition.y);

    ImGui::Text("angle = %f -sin: %f", angle, -sin(angle));

    ImGui::End();
}

void Gui::setMousePosition(sf::Vector2i mousePosition)
{
    this->mousePosition = mousePosition;
}