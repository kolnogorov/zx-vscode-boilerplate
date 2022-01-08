			device zxspectrum128

start			equ #8000

			org start

			; place your code here

			ret

			; build
			if (_ERRORS == 0 && _WARNINGS == 0)
			; filenames are defined in compile script
			savesna SNA_FILENAME, start
			savebin BIN_FILENAME, start, $-start
			labelslist LABELSLIST_FILENAME
			endif
