cd bcs-jira-to-code-notebooks

# 1) Scaffold project here
uv init .
# OR
uv init --no-package .

# change the project name from the folder name to src
# git mv src/bcs_jira_to_code_notebooks src/nbs

# 2) (Recommended) use Python 3.12 for package compatibility
uv python install 3.12
uv python pin 3.12

# 3) Add deps (adjust as needed)
uv add openai jupyter ipykernel boto3 jmespath

# 4) Install & lock
uv sync

# 5) Create a Jupyter kernel for this env
uv run python -m ipykernel install --user --name bcs-jira-to-code-nb
