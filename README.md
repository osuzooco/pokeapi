# pokeapi

# PokeAPI Python Script

This repository contains a single Python script that serves as a minimal interface to the [PokéAPI](https://pokeapi.co/), a free, open RESTful API for Pokémon data. With this script, you can fetch and display information about Pokémon, their types, charcateristics directly from the command line or within your Python projects.

## Features

- Fetch Pokémon details by name or ID(modify pokename, default is Pikachu)
- Retrieve information such as height, weight and types
- Simple and easy-to-use code
- Requires only standard Python libraries (requests may be needed)

## Usage

1. **Clone the Repository**

   ```bash
   git clone https://github.com/<osuzooco>/<pokeapi>.git
   cd <pokeapi>
   ```

2. **Install Dependencies**

   If your (custom) script uses the `requests` library, install it with pip:
   ```bash
   pip install requests
   ```

3. **Run the Script**

   ```bash
   python pokeapi.py <pokemon_name_or_id>
   ```
   (you have to do this directly in the file)

   Example:
   ```bash
   python pokeapi.py pikachu
   ```
   (Also this directly in the file)

## Example Output

```
Name: Pikachu
ID: 25
Type(s): Electric
Weight:60
Heigh:4

...
```

## File Overview

- `pokeapi.py` — The main Python script for interacting with the PokéAPI.

## Customization

Feel free to modify or extend the script for your own needs, such as fetching additional data, formatting responses, or integrating with other projects.

## License

This repository is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

## Credits

- [PokéAPI](https://pokeapi.co/) for the free Pokémon API.

---

