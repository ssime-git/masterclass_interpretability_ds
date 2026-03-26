# Launch the notebook with `uv`

Notebook to open:

- `allfiles/masterclass_model_interpretation_with_shap_en.ipynb`

## Check `uv`

```bash
uv --version
```

## Recommended setup

From the project root, install the dependencies declared in `pyproject.toml`:

```bash
uv sync
```

Then open the notebook:

```bash
uv run jupyter notebook allfiles/masterclass_model_interpretation_with_shap_en.ipynb
```

## If you prefer JupyterLab

```bash
uv run jupyter lab allfiles/masterclass_model_interpretation_with_shap_en.ipynb
```

## One-shot alternative

If you do not want to sync the project first, you can still launch Jupyter in one command:

```bash
uv run \
  --with notebook \
  --with pandas \
  --with numpy \
  --with matplotlib \
  --with seaborn \
  --with scikit-learn \
  --with xgboost \
  --with shap \
  jupyter notebook allfiles/masterclass_model_interpretation_with_shap_en.ipynb
```

## Notes

- `uv sync` installs the dependencies from `pyproject.toml` into the project environment.
- After that, `uv run ...` is the simplest way to reopen the notebook.
- On first launch, dependency resolution and download can take a bit longer.
