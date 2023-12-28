#include <iostream>
#include <SFML/Graphics.hpp>

using std::cout;
using std::endl;

using sf::RenderWindow;
using sf::VideoMode;
using sf::Event;


int main()
{
    RenderWindow window(VideoMode(850, 450), "Vaggospetr App", sf::Style::Close | sf::Style::Resize);

    sf::Image win_icon;
    if(!win_icon.loadFromFile("icon\\profile_pic.png")){
       std::cout << "icon can not be loaded" << std::endl; 
    }

    window.setIcon(win_icon.getSize().x, win_icon.getSize().y, win_icon.getPixelsPtr());

    sf::Font font;
    if(!font.loadFromFile("font\\PressStart2P-Regular.ttf")) {
        cout << "Error loading font - PressStart2P-Regular.ttf" << endl;
        return -1;
    }

    sf::Text heading;
    heading.setFont(font);
    heading.setString("SFML");

    heading.setPosition(sf::Vector2f(60.0f, 40.0f));
    heading.setCharacterSize(100);
    heading.setFillColor(sf::Color::Red);
    heading.setOutlineColor(sf::Color::Yellow);
    heading.setOutlineThickness(5);

    sf::Font paragraph_font;
    if(!paragraph_font.loadFromFile("font\\FjallaOne-Regular.ttf")) {
        cout << "Error loading font - FjallaOne-Regular.ttf" << endl;
        return -1;
    }

    sf::Text paragraph;
    paragraph.setFont(paragraph_font);
    paragraph.setString("SFML has 5 modules");

    paragraph.setPosition(sf::Vector2f(60.0f, 170.0f));
    //paragraph.setCharacterSize(100);
    paragraph.setScale(sf::Vector2f(0.80f, 2.0f));
    paragraph.setRotation(10);
    paragraph.setStyle(sf::Text::Style::Italic | sf::Text::Style::Bold);

    bool display_par = false; 

    sf::RectangleShape rectangle;
    rectangle.setSize(sf::Vector2f(300.0f, 100.0f));
    rectangle.setPosition(sf::Vector2f(60.0f, 300.0f));
    rectangle.setFillColor(sf::Color(0, 255, 0));
    rectangle.setOutlineColor(sf::Color(100, 20,  255));
    rectangle.setOutlineThickness(7.0f);

    bool display_rect = false;

    sf::CircleShape circle(50.0f);

    circle.setPosition(sf::Vector2f(600.0f, 350.0f));
    circle.setFillColor(sf::Color::Magenta);
    circle.setOutlineColor(sf::Color::White);
    circle.setOutlineThickness(-5.0f);

    bool display_circ = false;

    sf::CircleShape triangle(50.0f, 3);
    triangle.setPosition(sf::Vector2f(600.0f, 250.0f));
    triangle.setFillColor(sf::Color::Yellow);
    triangle.setOutlineColor(sf::Color::Black);
    triangle.setOutlineThickness(2.0f);

    sf::CircleShape square(50.0f, 4);
    square.setPosition(sf::Vector2f(600.0f, 0.0f));
    square.setFillColor(sf::Color::Green);
    square.setOutlineColor(sf::Color::Black);
    square.setOutlineThickness(-2.0f);

    sf::CircleShape polygon(50.0f, 5);
    polygon.setPosition(sf::Vector2f(300.0f, 200.0f));
    polygon.setFillColor(sf::Color::Red);
    polygon.setOutlineColor(sf::Color::Black);
    polygon.setOutlineThickness(2.0f);

    sf::ConvexShape parallelogram(4);

    parallelogram.setPoint(0, sf::Vector2f(600.0f, 125.0f));
    parallelogram.setPoint(1, sf::Vector2f(700.0f, 125.0f));
    parallelogram.setPoint(2, sf::Vector2f(750.0f, 185.0f));
    parallelogram.setPoint(3, sf::Vector2f(650.0f, 185.0f));

    parallelogram.setFillColor(sf::Color(255, 195, 0));
    parallelogram.setOutlineColor(sf::Color::White);
    parallelogram.setOutlineThickness(-2.0f);

    sf::RectangleShape line;
    line.setPosition(sf::Vector2f(100.0f, 420.0f));
    line.setSize(sf::Vector2f(300.0f, 3.0f));
    line.setFillColor(sf::Color(255, 195, 0));

    while (window.isOpen()) {
        Event event;
        while (window.pollEvent(event)) {

            switch (event.type) {
                case sf::Event::Resized:
                    std::cout << "window Resized: " << event.size.height << " X " << event.size.width << std::endl;
                    break;
                
                case sf::Event::LostFocus:
                    std::cout << "window Lost Focus" << std::endl;
                    break;
                
                case sf::Event::GainedFocus:
                    std::cout << "window Gain Focus" << std::endl;
                    break;
                case Event::KeyPressed:
                    cout << "--------------------------------------------" << endl;
                    cout << "Key pressed" << endl;

                    if (event.key.code == sf::Keyboard::Enter) {
                        cout << "Enter pressed" << endl;
                        display_par = true;
                        display_rect = true;
                        display_circ = true;
                    } else if (event.key.code == sf::Keyboard::Backspace) {
                        cout << "Backspace pressed" << endl;
                        display_par = false;
                        display_rect = false;
                        display_circ = false;
                    } else if (event.key.code == sf::Keyboard::A) {
                        cout << "A pressed" << endl;
                    }
                    
                    cout << "control:" << event.key.control << endl;
                    cout << "alt:" << event.key.alt << endl;
                    cout << "shift:" << event.key.shift << endl;
                    cout << "system:" << event.key.system << endl;
                    break;     
                case Event::KeyReleased:  
                    cout << "Key released" << endl;
                    break;

                case Event::TextEntered:
                    cout << "Text: " << event.text.unicode << endl;
                    if (event.text.unicode < 128) {
                        cout << "ASCII character typed: " 
                             << static_cast<char>(event.text.unicode) << endl;
                    }
                    break;     

                case Event::MouseButtonPressed:
                    if (event.mouseButton.button == sf::Mouse::Right) {
                        cout << "Right mouse button pressed" << endl;
                        circle.setRadius(circle.getRadius() / 1.2);
                    }
                    if (event.mouseButton.button == sf::Mouse::Middle) {
                        cout << "Middle mouse button pressed" << endl;
                    }
                    if (event.mouseButton.button == sf::Mouse::Left) {
                        cout << "Left mouse button pressed" << endl;
                        circle.setRadius(circle.getRadius() * 1.2);
                    }
                    cout << "Mouse position: " << event.mouseButton.x 
                            << ", " << event.mouseButton.y << endl;
                    break;
                case Event::MouseButtonReleased:
                    cout << "Mouse button released" << endl;
                    break;
                case Event::MouseWheelScrolled:
                    cout << "Scrolling delta: " << event.mouseWheelScroll.delta << endl;
                    break;
                case Event::Closed:
                    window.close();
                    cout << "Window closed successfully!" << endl;
                    break;
                default:
                    break;
            }
        }
        window.clear(sf::Color::Blue); // default black
        window.draw(heading);
        if (display_par == true){
            window.draw(paragraph);
        }
        if (display_rect == true){
            window.draw(rectangle);
        }
        window.draw(circle);
        window.draw(triangle);
        window.draw(square);
        window.draw(polygon);
        window.draw(parallelogram);
        window.draw(line);
        window.display();
    }

    return 0;
}

