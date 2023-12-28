#pragma once

#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>

#define SCREEN_WIDTH 650
#define SCREEN_HEIGHT 800

#define BLANK 0
#define Player_Vagg 1
#define Player_Danae 2

class TicTacToe {

	private:
		sf::Texture board_texture;
		sf::Texture texture_vagg;
		sf::Texture texture_danae;
		sf::Texture texture_blank;
		
		sf::Font font;
		
		sf::SoundBuffer click_buffer;
		sf::Sound click_sound;
		sf::SoundBuffer win_buffer;
		sf::Sound win_sound;

		sf::Sprite board;
		sf::Sprite pieces[3][3];
		sf::Text text;
		sf::Text title;
		sf::Text reset;
		sf::Text exit;


		int current_player;
		bool wait_for_reset;

		bool load_board();
		bool load_pieces();
		bool load_fonts_and_text();
		bool load_sounds();

		bool is_win();
		bool are_slots_available();

	public:
		unsigned int board_model[3][3];

		bool load_assets();

		bool initialize_game(int start_player);

		void draw(sf::RenderWindow& window);

		void keyPress(sf::Vector2f pos, sf::RenderWindow &window);
};