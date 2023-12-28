#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;

int main()
{
    RenderWindow window(VideoMode(850, 450), "Animation");

    sf::Font heading_font;
    if (!heading_font.loadFromFile("font/PressStart2P-Regular.ttf")) {
        cout << "Error loading font - PressStart2P-Regular.ttf" << endl;
        return -1;
    }
    sf::Text heading;
    heading.setPosition(sf::Vector2f(60.f, 50.f));
    heading.setFont(heading_font);
    heading.setCharacterSize(12);
    heading.setString("Hit Space to play sound, P to pause, S to stop");

    sf::SoundBuffer snd_buffer;
    if(!snd_buffer.loadFromFile("sounds/winning-an-extra-bonus.wav")) {
        cout << "Error loading audio!" << endl;
        return -1;
    }

    sf::Sound sound;
    sound.setBuffer(snd_buffer);
    sound.setLoop(true);

    while (window.isOpen()) {

        Event event;
        while (window.pollEvent(event)) {
            switch (event.type) {
                case Event::KeyPressed:
                    if (event.key.code == sf::Keyboard::Space) {
                        sound.play();
                        cout << "Play sound" << endl;
                    }
                    if (event.key.code == sf::Keyboard::P) {
                        sound.pause();
                        cout << "Pause sound" << endl;
                    }
                    if (event.key.code == sf::Keyboard::S) {
                        sound.stop();
                        cout << "Stop sound" << endl;
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

        window.clear(sf::Color::Black);
        window.draw(heading);
        window.display();    
    }

    return 0;
}

