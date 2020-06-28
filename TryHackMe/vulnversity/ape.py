#! /usr/bin/env python3

import requests
import io
import json

url = 'http://10.10.208.90:3333/internal/index.php'
sp = '§'
template = b"""something for nothing"""
file_content = io.BytesIO(template)

s = requests.Session()

#r = s.get(url)
#print(r.text)

def send_file_and_print_response(content, filename):
	"""Trying to fuzz the multipart/form by uploading different files
	to find the ones allowed on the site.
	"""
	files = { 'file': (filename, content) }
	data = { 'submit': 'Submit' }
	print(files)
	print('\n')
	r = s.post(url, files=files, data=data)
	print(r.headers)
	print('\n')
	print(r.text)
	print('--' * 20)


with open('./wordlist', 'r'	) as file:
	for line in file:
		filename = f'payload{sp}{line.strip()}{sp}'
		send_file_and_print_response(file_content, filename)
	

s.close();
