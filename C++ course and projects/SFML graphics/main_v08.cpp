#include <iostream>
#include <SFML/Graphics.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;

int main()
{
    RenderWindow window(VideoMode(850, 450), "Transformations");

    sf::RectangleShape rectangle(sf::Vector2f(200.0f, 100.0f));
    rectangle.setOutlineColor(sf::Color::Black);
    rectangle.setOutlineThickness(2.0f);
    rectangle.setPosition(sf::Vector2f(50.0f, 50.0f));
    rectangle.setRotation(45.0f);
    rectangle.setScale(1.0f, 1.5f);


    sf::Texture sandy;
    if (!sandy.loadFromFile("icon\\sandy.jpeg", sf::IntRect(0, 0, 800, 800))) {
        cout << "Error loading fiery texture file!" << endl;
        return -1;
    }

    rectangle.setTexture(&sandy);

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            switch (event.type) {
                case Event::KeyPressed:
                    cout << "--------------------------------------------" << endl;
                    cout << "Key pressed" << endl;

                    if (event.key.code == sf::Keyboard::H) {
                        cout << "H pressed" << endl;
                        rectangle.setOrigin(sf::Vector2f(100.0f, 50.0f)); // changes the reference point of the object which by default is on top left corner   
                    } else if (event.key.code == sf::Keyboard::L) {
                        cout << "L pressed" << endl;
                        rectangle.setOrigin(sf::Vector2f(0.0f, 0.0f)); // changes the reference point of the object which by default is on top left corner   
                    } else if (event.key.code == sf::Keyboard::A) {
                        cout << "A pressed" << endl;
                        rectangle.scale(0.5f, 1.0f);
                    } else if (event.key.code == sf::Keyboard::D) {
                        cout << "D pressed" << endl;
                        rectangle.scale(2.0f, 1.0f);
                    } else if (event.key.code == sf::Keyboard::S) {
                        cout << "S pressed" << endl;
                        rectangle.scale(1.0f, 0.5f);
                    } else if (event.key.code == sf::Keyboard::W) {
                        rectangle.scale(1.0f, 2.0f);
                        cout << "W pressed" << endl;
                    }
                    break;
                case Event::MouseButtonPressed:
                    if (event.mouseButton.button == sf::Mouse::Right) {
                        rectangle.move(10.0f, 5.0f);
                    } else if (event.mouseButton.button == sf::Mouse::Left) {
                        rectangle.move(-10.0f, -5.0f);
                    }
                    break;
                case Event::MouseWheelScrolled:
                    if (event.mouseWheelScroll.delta > 0) {
                        rectangle.rotate(10.0f);
                    } else if (event.mouseWheelScroll.delta < 0) {
                        rectangle.rotate(-10.0f);
                    }
                    break;                
                case Event::Closed:
                    window.close();
                    cout << "Window closed successfully!" << endl;
                    break;
                default:
                    break;
            }
        }

        window.clear(sf::Color::White);
        window.draw(rectangle);
        window.display();
    }

    return 0;
}

