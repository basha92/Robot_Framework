from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.firefox.service import Service as FirefoxService
from selenium.webdriver.edge.service import Service as EdgeService
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager

def open_chrome():
    driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    driver.get("https://the-internet.herokuapp.com")
    print(f"Chrome opened — Title: {driver.title}")
    driver.quit()

def open_firefox():
    driver = webdriver.Firefox(service=FirefoxService(GeckoDriverManager().install()))
    driver.get("https://the-internet.herokuapp.com")
    print(f"Firefox opened — Title: {driver.title}")
    driver.quit()

def open_edge():
    driver = webdriver.Edge(service=EdgeService(EdgeChromiumDriverManager().install()))
    driver.get("https://the-internet.herokuapp.com")
    print(f"Edge opened — Title: {driver.title}")
    driver.quit()

# Run all three
open_chrome()
open_firefox()
open_edge()