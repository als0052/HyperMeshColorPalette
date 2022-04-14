#!/usr/bin/env python3
# Filename: color_html_maker.py

"""
This module contains code that will read the colors from the tab-delimited 
csv file created from the Excel workbook and generate the HTML code for 
displaying the color blocks.

Created by als0052
Created on Unknown
Updated on 04-14-2022
"""

from pathlib import Path
import pandas as pd


def color_df(fn):
	df = pd.read_csv(fn, sep='\t', header=0, index_col=0)
	fn_out = Path().cwd().joinpath('hm_color_html.txt')
	
	with open(fn, 'r', encoding='utf8') as fin:
		data = fin.read().splitlines()
	data = data[1:]  # remove header row
	
	with open(fn_out, 'w', encoding='utf8') as fout:
		for line in data:
			html_code = color_div_maker(df_row=line)
			print(html_code, file=fout)
	return None


def color_div_maker(df_row):
	line = df_row.split('\t')  # monkey patch
	color_id = line[0]
	rgb = f'({line[1]}, {line[2]}, {line[3]})'
	hex_color = line[4]
	description = f"{color_id}: {rgb} {hex_color}"
	s = (f'<div class="input-color">\n\t<p class="description">{description}'
	     f'</p>\n\t<div class="color-box" style="background-color: '
		 f'{hex_color};"></div>\n</div>')
	return s


if __name__ == "__main__":
	fn = Path().home().joinpath(r"Downloads\hypermesh_color_palette.txt")
	color_df(fn)
