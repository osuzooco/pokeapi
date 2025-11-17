#!/bin/bash

# Attempt to read version from local `pokeapi.py` (preferred)
# The script looks for a line like: VERSION = "1.0" or __version__ = '1.0' or a comment "# Version: 1.0"
VERSION_FILE="$(dirname "$0")/pokeapi.py"

VERSION=""
if [ -f "${VERSION_FILE}" ]; then
    VERSION=$(grep -Eo "(__version__|VERSION)\s*=\s*['\"]?[0-9]+(\.[0-9]+)*['\"]?" "${VERSION_FILE}" | head -n1 | sed -E "s/.*=\s*['\"]?([0-9.]+)['\"]?/\1/")
    if [ -z "${VERSION}" ]; then
        # try to find a comment like: # Version: 1.0
        VERSION=$(grep -Eo "[Vv]ersion[: ]+([0-9]+(\.[0-9]+)*)" "${VERSION_FILE}" | head -n1 | grep -Eo "[0-9]+(\.[0-9]+)*")
    fi
fi

# Fallback if no version found in file
if [ -z "${VERSION}" ]; then
    VERSION="1.0"
fi

echo "Changelog version: ${VERSION}"

# Check network PokéAPI (still useful to verify connectivity)
echo "Checking PokéAPI network accessibility..."
POKE_API_URL="https://pokeapi.co/api/v2/"
response=$(curl -s "${POKE_API_URL}")

if [ $? -eq 0 ]; then
    echo "PokéAPI is accessible"
    echo "Response: $response"
else
    echo "Error: Unable to reach PokéAPI"
    exit 1
fi

echo "Next version coming soon."

