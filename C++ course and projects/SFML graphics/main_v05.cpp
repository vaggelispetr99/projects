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

    // An array of 3 vertices that defines a triangle primitive
    sf::VertexArray triangle(sf::Triangles, 3);

    // Set position of the triangle points
    triangle[0].position = sf::Vector2f(475.0f, 50.0f);
    triangle[1].position = sf::Vector2f(100.0f, 300.0f);
    triangle[2].position = sf::Vector2f(400.0f, 400.0f);

    // Different colors for each point of the triangle
    triangle[0].color = sf::Color::Red;
    triangle[1].color = sf::Color::Blue;
    triangle[2].color = sf::Color::Green;

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {
                window.close();
                cout << "Window closed successfully!" << endl;
            }
        }

        window.clear(sf::Color::White);
        window.draw(triangle);
        window.display();
    }

    return 0;
}

