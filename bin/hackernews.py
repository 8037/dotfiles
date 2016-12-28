#!/usr/bin/python

from bs4 import BeautifulSoup
import requests
import webbrowser

url = "https://news.ycombinator.com/news"

html = requests.get(url)
html.raise_for_status()

soup = BeautifulSoup(html.text, "html.parser")

tagged_values = soup.find_all("a", {"class":"storylink"})
#print(tagged_values)

#   values = []
#   for tv in tagged_values:
#       values.append(tv.get_text())

#print(tagged_values.get('href'))

values = [x.get_text() for x in tagged_values]
links = [x.get("href") for x in tagged_values]

#for link in links:
#    print(link)

i = 1
for value in values:
    if i < 10:
        print("%d.  %s" % (i, value))
    else:
        print("%d. %s" % (i, value))
    i += 1

op = int(input("\n> "))



if op == 0 or op > 30:
     print("QUITTING")
else:
    webbrowser.open(links[op-1])
