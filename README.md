# Launch the notebook with `uv`

Notebook to open:

- `allfiles/masterclass_model_interpretation_with_shap_en.ipynb`

## Check `uv`

```bash
uv --version
```

## Recommended workflow

From the project root:

```bash
make install
```

Then open the notebook:

```bash
make notebook
```

When you are done and want to remove the local environment and common caches:

```bash
make clean
```

## Available `make` commands

```bash
make help
```

Main targets:

- `make install` — install dependencies with `uv sync`
- `make notebook` — open `allfiles/masterclass_model_interpretation_with_shap_en.ipynb`
- `make lab` — open the notebook in JupyterLab
- `make clean` — remove `.venv` and common local caches

## Equivalent `uv` commands

If you prefer not to use `make`, the equivalent workflow is:

```bash
uv sync
uv run jupyter notebook allfiles/masterclass_model_interpretation_with_shap_en.ipynb
```

## If you prefer JupyterLab

```bash
make lab
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

- `make install` is the recommended first step.
- `make notebook` is the default way to reopen the notebook later.
- `uv sync` installs the dependencies from `pyproject.toml` into the project environment.
- `make clean` removes the local environment and common caches, so you can end with a clean folder.
- On first launch, dependency resolution and download can take a bit longer.
