#include <iostream>
#include <SFML/Graphics.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;

int main()
{
    RenderWindow window(VideoMode(850, 450), "Textures and Sprites");

    sf::Image win_icon;
    if(!win_icon.loadFromFile("icon\\profile_pic.png")){
       std::cout << "icon can not be loaded" << std::endl; 
    }

    window.setIcon(win_icon.getSize().x, win_icon.getSize().y, win_icon.getPixelsPtr());

    sf::Texture texture;

    if (!texture.loadFromFile("icon\\wavy.jpeg")) {
        cout << "Error loading texture file!" << endl;
        return -1;
    }

    sf::RectangleShape square;
    square.setSize(sf::Vector2f(200.0f, 200.0f));
    square.setOrigin(100.0f, 100.0f); // sets center point of rectangle, the default is left upper corner
    square.setPosition(sf::Vector2f(225.0f, 100.0f)); // sets the position of the rectangle's center point

    square.setTexture(&texture);

    sf::RectangleShape square_2;
    square_2.setSize(sf::Vector2f(200.0f, 200.0f));
    square_2.setOrigin(100.0f, 100.0f);
    square_2.setPosition(sf::Vector2f(625.0f, 100.0f));

    square_2.setTexture(&texture);
    square_2.setTextureRect(sf::IntRect(1000, 1000, 1300, 1300));

    sf::Image image;

    if (!image.loadFromFile("icon\\wavy.jpeg")) {
        cout << "Error loading texture file!" << endl;
        return -1;
    }

    sf::Texture texture_2;
    texture_2.loadFromImage(image, sf::IntRect(1000, 1000, 1200, 1200));

    sf::CircleShape circle(100);
    circle.setPosition(sf::Vector2f(200.0f, 250.0f));

    circle.setTexture(&texture_2);

    sf::Texture sandy;
    if (!sandy.loadFromFile("icon\\sandy.jpeg", sf::IntRect(0, 0, 200, 200))) {
        cout << "Error loading sandy texture file!" << endl;
        return -1;
    }

    sf::Sprite sprite;
    sprite.setPosition(600.0f, 250.0f);
    sprite.setTexture(sandy);
    

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {
                window.close();
                cout << "Window closed successfully!" << endl;
            }
        }

        window.clear(sf::Color::White);
        window.draw(square);
        window.draw(square_2);
        window.draw(circle);
        window.draw(sprite);
        window.display();
    }

    return 0;
}

