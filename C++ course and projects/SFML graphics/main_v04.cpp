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

    sf::VertexArray line_strip(sf::LineStrip, 5);

    line_strip[0].position = sf::Vector2f(175.0f, 50.0f);
    line_strip[1].position = sf::Vector2f(100.0f, 300.0f);
    line_strip[2].position = sf::Vector2f(200.0f, 400.0f);
    line_strip[3].position = sf::Vector2f(500.0f, 200.0f);
    line_strip[4].position = sf::Vector2f(700.0f, 300.0f);

    line_strip[0].color = sf::Color::Red;
    line_strip[1].color = sf::Color::Green;
    line_strip[2].color = sf::Color::Red;
    line_strip[3].color = sf::Color::Yellow;
    line_strip[4].color = sf::Color::Blue;

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {
                window.close();
                cout << "Window closed successfully!" << endl;
            }
        }

        window.clear(sf::Color::White);
        window.draw(line_strip);
        window.display();
    }

    return 0;
}

