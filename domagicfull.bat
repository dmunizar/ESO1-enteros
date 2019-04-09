pandoc -t revealjs --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables -s --mathjax main.md --lua-filter ./pandoc/noanswers.lua --lua-filter ./pandoc/noanswers_sec.lua --lua-filter ./pandoc/noteacher_sec.lua -o diapositivas.html -V revealjs-url=./reveal.js -V theme=my_black
pandoc -t revealjs --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables -s --mathjax main.md -o diapositivas_soluciones.html --lua-filter ./pandoc/noteacher_sec.lua -V revealjs-url=./reveal.js -V theme=my_white
pandoc -t revealjs --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables -s --mathjax main.md -o propuesta_didactica.html -V revealjs-url=./reveal.js -V theme=my_black
pandoc -t beamer -s main.md -o diapositivas_soluciones.pdf --lua-filter ./pandoc/noteacher_sec.lua --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables
pandoc -t beamer -s main.md --lua-filter ./pandoc/noanswers.lua --lua-filter ./pandoc/noanswers_sec.lua --lua-filter ./pandoc/noteacher_sec.lua -o diapositivas.pdf --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables
pandoc --template="./pandoc/eisvogel.latex" -s main.md --lua-filter ./pandoc/removeemptyheadings.lua --lua-filter ./pandoc/noteacher_sec.lua --lua-filter ./pandoc/nopause.lua --lua-filter ./pandoc/noanswers_sec.lua --lua-filter ./pandoc/noanswers.lua -o material_alumnado.pdf --from markdown+fenced_divs+fancy_lists+example_lists+multiline_tables --listings --toc



