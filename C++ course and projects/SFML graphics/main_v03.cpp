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

    sf::Vertex hztal_line[] = {
        sf::Vertex(sf::Vector2f(250.0f, 225.0f)),
        sf::Vertex(sf::Vector2f(600.0f, 225.0f))
    };

    hztal_line[0].color = sf::Color::Green; // default color is white and the color of the line is a gradient of the two connected vertices
    hztal_line[1].color = sf::Color::Red; // default color is white and the color of the line is a gradient of the two connected vertices

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {
                window.close();
                cout << "Window closed successfully!" << endl;
            }
        }

        window.clear(sf::Color::Blue);
        window.draw(hztal_line, 2, sf::Lines);
        window.display();
    }

    return 0;
}

