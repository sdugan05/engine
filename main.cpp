#include <math.h>

#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/System/Clock.hpp>

#include "Gui.h"
#include "Input.h"

#include "Brick.h"
#include "Ball.h"

void poputateBricks(std::vector<Brick>& bricks, int width, int height) {
    for (int i = 0; i < width; i++)
    {
        for (int j = 0; j < height; j++)
        {
            bricks.push_back(Brick(i * 50 + i * 10, j * 25 + j * 10, 50, 25));
        }
    }
}

int main()
{
    // Main Window
    sf::RenderWindow window(sf::VideoMode(WIDTH, HEIGHT), "SFML Test Window");

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
    sf::Vector2f ballSpeed = sf::Vector2f(200, 200);
    float ballMagnitude = sqrt(pow(ballSpeed.x, 2) + pow(ballSpeed.y, 2));
    float ballDirection = 0;
    sf::Color cursorColor(0, 0, 255, 255);
    
    Ball ball(sf::Vector2f(200, 400), sf::Vector2f(50, 100), sf::Vector2f(10, 10), sf::Color(255, 0, 0));
    ball.setVelocity(ballSpeed);
    bool collided = false;

    // Cursor
    sf::RectangleShape paddle(sf::Vector2f(75, 20));
    paddle.setPosition(sf::Vector2f(0, 250));

    // Bricks
    std::vector<Brick> bricks;
    poputateBricks(bricks, 7, 4);

    if (gui.repopulateBricks) {
        poputateBricks(bricks, 7, 4);
        gui.repopulateBricks = false;
    }

    // Window loop
    while (window.isOpen())
    {   
        // Event loop
        sf::Event event;
        while (window.pollEvent(event))
        {
            ImGui::SFML::ProcessEvent(event);

            // Exit
            if (event.type == sf::Event::Closed) 
            {
                window.close();
            }
                
        }
        // Update engine components
        input.update();
        // Update game vars
        mousePosition = input.getMousePosition();
        deltaTime = clock.restart().asSeconds();
        ballSpeed = gui.ballSpeed;

        ball.update(deltaTime);

        // Ball collision with paddle
        if (ball.getShape().getGlobalBounds().intersects(paddle.getGlobalBounds())) 
        {
            if (!collided) 
            {
                float randomAngle = rand() % 60 + 30;
                randomAngle = randomAngle * (M_PI / 180);

                gui.angle = randomAngle;

                ballDirection = atan(ballSpeed.y / ballSpeed.x) * 180 / 3.14159265;
                // if ball is on the left side of the paddle then make the ball go left
                sf::Vector2f newVelocity;

                // left
                if (ball.getPosition().x < (paddle.getPosition().x + paddle.getSize().x / 2)) 
                {
                    newVelocity = sf::Vector2f(-cos(randomAngle) * ballMagnitude, -sin(randomAngle) * ballMagnitude);
                }
                // right
                else if (ball.getPosition().x > (paddle.getPosition().x + paddle.getSize().x / 2))
                {
                    // else make the ball go right
                    newVelocity = sf::Vector2f(cos(randomAngle) * ballMagnitude, -sin(randomAngle) * ballMagnitude);
                }

                ball.setVelocity(newVelocity);
                ball.setColor(cursorColor);
            }
            collided = true;
        }
        else { collided = false; }

        // Ball collision with bricks

        for (int i = 0; i < bricks.size(); i++) {
            if (ball.isColliding(bricks[i]) && !bricks[i].isDestroyed) {
                // if ball is on the left side of the brick then make the ball go left
                sf::Vector2f oldfVelocity = ball.getVelocity();
                sf::Vector2f newVelocity;

                newVelocity.x = oldfVelocity.x;
                newVelocity.y = -oldfVelocity.y;

                ball.setVelocity(newVelocity);
                bricks[i].isDestroyed = true;
            }
        }


        gui.ballSpeed = ball.getVelocity();

        // Game logic
        gui.setMousePosition(mousePosition);
        paddle.setPosition(mousePosition.x, paddle.getPosition().y);

        cursorColor.r = (mousePosition.x % 255);
        cursorColor.b = (mousePosition.y % 255);

        paddle.setFillColor(cursorColor);

        // Draw gui
        gui.draw();

        window.clear(sf::Color::White);
        // Drawing

        window.draw(paddle);

        ball.draw(window);

        for (int i = 0; i < bricks.size(); i++)
        {
            bricks[i].draw(window);
        }

        ImGui::SFML::Render(window);

        window.display();
    }

    return 0;
}