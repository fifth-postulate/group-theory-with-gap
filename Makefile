PNGS := $(patsubst graphviz/%.gv,graphviz/%.gv.png,$(wildcard graphviz/*.gv))

all: $(PNGS)

graphviz/%.gv.png: graphviz/%.gv
	dot -O -Tpng $<
