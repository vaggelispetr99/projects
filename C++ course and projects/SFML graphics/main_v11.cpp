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

    // Rectangular area of the 2D world
    sf::View view(sf::FloatRect(400.0f, 400.0f, 850.0f, 450.0f));

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

