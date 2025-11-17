import requests

brl="https://pokeapi.co/api/v2/"
def gpi(name):

    url=f"{brl}/{name}"

    response=requests.get(url)
    if response.status_code == 200:
        pokedata =response.json()
        print(pokedata)
        return pokedata
    else:
        print("Error: Could not retrieve data{response.status_code}")
        
    
    pokename= "pikachu"

    pokeinfo=gpi(pokename)

    if pokeinfo:
        print(f"Name:{pokeinfo['name']}")
        print(f"Id:{pokeinfo['id']}")
        print(f"Weight:{pokeinfo['weight']}")
        print(f"Height:{pokeinfo['height']}")
        print(f"Types:{pokeinfo['types']}")
        
