.PHONY: help install notebook lab clean

help:
	@echo "Available targets:"
	@echo "  make install   - Install project dependencies with uv"
	@echo "  make notebook  - Open the target notebook in Jupyter Notebook"
	@echo "  make lab       - Open the target notebook in JupyterLab"
	@echo "  make clean     - Remove local env and common caches"

install:
	uv sync

notebook:
	uv run jupyter notebook allfiles/masterclass_model_interpretation_with_shap_en.ipynb

lab:
	uv run jupyter lab allfiles/masterclass_model_interpretation_with_shap_en.ipynb

clean:
	rm -rf .venv .pytest_cache .mypy_cache .ruff_cache __pycache__ .ipynb_checkpoints
	find . -type d -name __pycache__ -prune -exec rm -rf {} +
	find . -type d -name .ipynb_checkpoints -prune -exec rm -rf {} +
