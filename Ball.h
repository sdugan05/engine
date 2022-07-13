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

    bool isColliding(Brick brick);
    sf::Vector2f getPosition();
    sf::Vector2f getVelocity();
    sf::Vector2f getSize();
    sf::Color getColor();
    sf::CircleShape getShape();

    sf::Vector2f velocity;
private:
    sf::Vector2f position;
    
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

bool Ball::isColliding(Brick brick)
{
    if (brick.getShape().getGlobalBounds().intersects(this->getShape().getGlobalBounds()))
    {
        return true;
    } 
    else 
    {
        return false;
    }
    
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
