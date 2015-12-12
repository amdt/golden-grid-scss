golden-grid.css: clean
	scss golden-grid.scss golden-grid.css

clean:
	-rm golden-grid.css
	-rm golden-grid.css.map

.PHONY: clean
