#!/usr/bin/python

from bs4 import BeautifulSoup
import requests
import sys
import shutil
import multiprocessing
import os.path

end = sys.argv[1]

html = requests.get(end)
html.raise_for_status()

soup = BeautifulSoup(html.text, "html.parser")

#extension = ('.jpg', '.webm', '.jpeg', '.png', '.gif')
links = []

def download_stuff(url):
    filename = url.rsplit('/',1)[1]
    # check if file already exists
    if not (os.path.isfile(filename)):
        print("Downloading %s ..." % filename)
        response = requests.get(url,stream=True)
        with open(filename, 'wb') as f:
            shutil.copyfileobj(response.raw,f)
        del response

for link in (soup.findAll('a', 'fileThumb')):#(soup.findAll('a', {"target" : "_blank"})):
  #  if link['href'].endswith(extension):
    url = link.get('href')
    url = 'https:' + url
    links.append(url)

pool=multiprocessing.Pool(processes=5)
output = pool.map(download_stuff,links)
pool.close()
pool.join()
