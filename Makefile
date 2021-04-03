pdf:
	@echo "c = get_config();c.Exporter.template_file = 'templates/exporter.tplx'" > jupyter_nbconvert_config.py
	@jupyter nbconvert --to=pdf ProtonParameters.ipynb
	@rm jupyter_nbconvert_config.py

latex:
	@echo "c = get_config();c.Exporter.template_file = 'templates/exporter.tplx'" > jupyter_nbconvert_config.py
	@jupyter nbconvert --to=latex ProtonParameters.ipynb
	@rm jupyter_nbconvert_config.py

pdf-nocode:
	@echo "c = get_config();c.Exporter.template_file = 'templates/exporter-nocode.tplx'" > jupyter_nbconvert_config.py
	@jupyter nbconvert --to=pdf ProtonParameters.ipynb
	@rm jupyter_nbconvert_config.py

latex-nocode:
	@echo "c = get_config();c.Exporter.template_file = 'templates/exporter-nocode.tplx'" > jupyter_nbconvert_config.py
	@jupyter nbconvert --to=latex ProtonParameters.ipynb
	@rm jupyter_nbconvert_config.py

clean:
	@rm -f ProtonParameters.pdf ProtonParameters.tex
	@rm -rf ProtonParameters_files
