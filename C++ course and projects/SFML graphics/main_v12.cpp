#include <iostream>
#include <SFML/Graphics.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;

int main()
{
    RenderWindow window(VideoMode(850, 450), "Animation");

    sf::Texture area_texture;
    if(!area_texture.loadFromFile("icon\\area.jpg")) {
        cout << "Error loading texture file!" << endl;
        return EXIT_FAILURE;
    }

    sf::Sprite area_sprite;
    area_sprite.setTexture(area_texture);

    // Rectangular area of the 2D world, centered at 1350, 1300
    sf::View view(sf::Vector2f(1350.f, 1300.f), sf::Vector2f(1700.f, 900.f));

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {

            switch (event.type) {
                case Event::Closed:
                    window.close();
                    cout << "Window closed successfully!" << endl;
                    break;
                default:
                    break;
            }
        }
        window.setView(view);

        window.clear(sf::Color::Black);
        window.draw(area_sprite);
        window.display();    
    }

    return 0;
}

