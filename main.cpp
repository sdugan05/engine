#include <math.h>

#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/System/Clock.hpp>

#include "Gui.h"
#include "Input.h"

int WIDTH = 400;
int HEIGHT = 500;

class Ball 
{
public:
    Ball(sf::Vector2f position, sf::Vector2f velocity, sf::Vector2f size, sf::Color color);
    void update(float deltaTime);
    void draw(sf::RenderWindow& window);
    void setPosition(sf::Vector2f position);
    void setVelocity(sf::Vector2f velocity);
    void setSize(sf::Vector2f size);
    void setColor(sf::Color color);
    void setBounds(sf::Rect<float> bounds);
    sf::Vector2f getPosition();
    sf::Vector2f getVelocity();
    sf::Vector2f getSize();
    sf::Color getColor();
    sf::CircleShape getShape();
private:
    sf::Vector2f position;
    sf::Vector2f velocity;
    sf::Vector2f size;
    sf::Color color;
    sf::CircleShape shape;
};

Ball::Ball(sf::Vector2f position, sf::Vector2f velocity, sf::Vector2f size, sf::Color color) 
{
    this->position = position;
    this->velocity = velocity;
    this->size = size;
    this->color = color;
}

void Ball::update(float deltaTime) 
{
    sf::Vector2f newPosition = position + (velocity * deltaTime);
    if (newPosition.x < 0) {
        // newPosition.x = 0;
        velocity.x = -velocity.x;
    }
    else if (newPosition.x > WIDTH - (size.x * 2))
    {
        // newPosition.x = 1080 - size.x;
        velocity.x = -velocity.x;
    }
    if (newPosition.y < 0) {
        // newPosition.y = 0;
        velocity.y = -velocity.y;
    }
    else if (newPosition.y > HEIGHT - (size.y * 2))
    {
        // newPosition.y = 720 - size.y;
        velocity.y = -velocity.y;
    }

    newPosition = position + (velocity * deltaTime);
    position = newPosition;
}

void Ball::draw(sf::RenderWindow& window) 
{
    shape = sf::CircleShape(size.x);
    shape.setPosition(position);
    shape.setFillColor(color);
    window.draw(shape);
}

void Ball::setPosition(sf::Vector2f position) 
{
    this->position = position;
}

void Ball::setVelocity(sf::Vector2f velocity) 
{
    this->velocity = velocity;
}

void Ball::setSize(sf::Vector2f size) 
{
    this->size = size;
}

void Ball::setColor(sf::Color color) 
{
    this->color = color;
}

sf::Vector2f Ball::getPosition() 
{
    return position;
}

sf::Vector2f Ball::getVelocity() 
{
    return velocity;
}

sf::Vector2f Ball::getSize() 
{
    return size;
}

sf::Color Ball::getColor() 
{
    return color;
}

sf::CircleShape Ball::getShape() 
{
    return shape;
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
    
    Ball ball(sf::Vector2f(100, 100), sf::Vector2f(50, 100), sf::Vector2f(10, 10), sf::Color(255, 0, 0));
    ball.setVelocity(ballSpeed);
    bool collided = false;

    // Cursor
    sf::RectangleShape paddle(sf::Vector2f(75, 20));
    paddle.setPosition(sf::Vector2f(0, 250));

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
            }
            collided = true;
        }
        else { collided = false; }

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

        ImGui::SFML::Render(window);

        window.display();
    }

    return 0;
}