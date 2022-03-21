#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/System/Clock.hpp>

#include "Gui.h"
#include "Input.h"

int main()
{
    // Main Window
    sf::RenderWindow window(sf::VideoMode(1080, 720), "SFML Test Window");

    // Engine Components
    sf::Clock deltaClock;
    Gui gui(window, deltaClock);
    gui.init();
    window.resetGLStates();

    Input input(window);
    
    // Game vars
    sf::Vector2i mousePosition;
    sf::Clock clock;
    float deltaTime;
    int ballSpeed = 20;
    sf::Color cursorColor(0, 0, 255, 255);
    

    // Cursor
    sf::RectangleShape shape(sf::Vector2f(50.f, 50.f));
    shape.setPosition(sf::Vector2f(0.f, 500.f));

    sf::CircleShape circle(50.f);
    circle.setFillColor(sf::Color(255, 0, 0, 255));
    circle.setPosition(100, 100);


    // Window loop
    while (window.isOpen())
    {   
        // Event loop
        sf::Event event;
        while (window.pollEvent(event))
        {
            ImGui::SFML::ProcessEvent(event);

            // Exit
            if (event.type == sf::Event::Closed) {
                window.close();
            }
                
        }
        // Update engine components
        input.update();
        // Update game vars
        mousePosition = input.getMousePosition();
        deltaTime = clock.restart().asSeconds();
        ballSpeed = gui.ballSpeed;

        // Game logic
        gui.setMousePosition(mousePosition);
        shape.setPosition(mousePosition.x, shape.getPosition().y);

        cursorColor.r = (mousePosition.x % 255);
        cursorColor.b = (mousePosition.y % 255);

        shape.setFillColor(cursorColor);

        circle.setPosition(circle.getPosition().x + (ballSpeed * deltaTime), circle.getPosition().y);

        // Draw gui
        gui.draw();

        window.clear(sf::Color::White);
        // Drawing

        window.draw(shape);

        window.draw(circle);

        ImGui::SFML::Render(window);

        window.display();
    }

    return 0;
}