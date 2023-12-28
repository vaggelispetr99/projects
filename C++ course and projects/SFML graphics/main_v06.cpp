#include <iostream>
#include <SFML/Graphics.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;

int main()
{
    RenderWindow window(VideoMode(850, 450), "Vertex Arrays");

    sf::Vertex triangle_strip[] = {
        sf::Vertex(sf::Vector2f(50.0f, 150.0f)),
        sf::Vertex(sf::Vector2f(200.0f, 100.0f)),
        sf::Vertex(sf::Vector2f(200.0f, 300.0f)),
        sf::Vertex(sf::Vector2f(400.0f, 100.0f)),
        sf::Vertex(sf::Vector2f(600.0f, 300.0f))
    };

    triangle_strip[0].color = sf::Color::Red;
    triangle_strip[1].color = sf::Color::Yellow;
    triangle_strip[2].color = sf::Color::Magenta;
    triangle_strip[3].color = sf::Color::Green;
    triangle_strip[4].color = sf::Color::Blue;

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {
                window.close();
                cout << "Window closed successfully!" << endl;
            }
        }

        window.clear(sf::Color::White);
        window.draw(triangle_strip, 5, sf::TriangleStrip);
        window.display();
    }

    return 0;
}