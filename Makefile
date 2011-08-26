all:
	runhaskell Setup.hs configure
	runhaskell Setup.hs build
clean:
	rm -rf dist/
