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
    sf::View view;
    view.setCenter(1350.f, 1300.f);

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {
            switch (event.type) {
                case Event::KeyPressed:
                    if (event.key.code == sf::Keyboard::Right) {
                        view.move(10.f, 0);
                    } else if (event.key.code == sf::Keyboard::Left) {
                        view.move(-10.f, 0);
                    } else if (event.key.code == sf::Keyboard::Up) {
                        view.move(0, -10.f);
                    } else if (event.key.code == sf::Keyboard::Down) {
                        view.move(0, 10.f);
                    } else if (event.key.code == sf::Keyboard::A) {
                        view.rotate(2.f);
                    } else if (event.key.code == sf::Keyboard::D) {
                        view.rotate(-2.f);
                    } else if (event.key.code == sf::Keyboard::Z) {
                        view.zoom(0.9f);
                    } else if (event.key.code == sf::Keyboard::O) {
                        view.zoom(1.1f);
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
        window.setView(view);

        window.clear(sf::Color::Black);
        window.draw(area_sprite);
        window.display();    
    }

    return 0;
}

