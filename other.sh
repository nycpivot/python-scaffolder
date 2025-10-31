# scaffold an environment
python -m venv .venv
.venv/Scripts/activate     # (Script on Windows, bin on Linux)
python -m pip install --upgrade pip setuptools wheel build

# scaffold a new project
python -m pip install uv
uv init bcs-jira-to-code

# list dependencies
uv pip check

# manual scan to install packages (site-packages)
uv pip install pipreqs

# add to requirements.txt
# uv run pipreqs . --force --encoding latin-1
# uv run pipreqs . --force
uv run pipreqs . --force --ignore .venv

# run this from a blank environment to download deps
uv pip install -r requirements.txt

# build
python -m build