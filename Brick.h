class Brick
{
public:
    bool isDestroyed;

    int x;
    int y;

    int width;
    int height;

    sf::RectangleShape shape;

    Brick(int x, int y, int width, int height)
    {
        this->x = x;
        this->y = y;
        this->width = width;
        this->height = height;

        this->isDestroyed = false;
    }

    bool isColliding(int x, int y)
    {
        if (x >= this->x && x <= this->x + this->width && y >= this->y && y <= this->y + this->height)
        {
            return true;
        }
        return false;
    }

    sf::RectangleShape getShape()
    {
        shape.setPosition(x, y);
        shape.setSize(sf::Vector2f(width, height));
        shape.setFillColor(sf::Color::Red);
        shape.setOutlineColor(sf::Color::Black);
        shape.setOutlineThickness(4);

        return shape;
    }

    void draw(sf::RenderWindow &window)
    {
        if (!isDestroyed)
        {
            window.draw(getShape());
        }
    }
};