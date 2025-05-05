import os
from datetime import datetime
from git import Repo # type: ignore

# Path to the repository
repo = Repo(os.getcwd())
# Get the list of changed files since the last push
upstream_commit = repo.git.rev_parse('@{u}')
changed_files_paths = [item.a_path for item in repo.commit(upstream_commit).diff(None) if item.a_path.endswith('.md')]

# Define the timestamp format
timestamp_format = "%Y-%m-%d"

def update_timestamp(file_path):
  with open(file_path, 'r') as file:
    content = file.readlines()

  timestamp_added = False
  with open(file_path, 'w') as file:
    for line in content:
      if line.startswith("Last updated:"):
        file.write(f"Last updated: {datetime.now().strftime(timestamp_format)}\n")

        timestamp_added = True
      else:
        file.write(line)

    if not timestamp_added:
      file.write(f"\nLast updated: {datetime.now().strftime(timestamp_format)}\n")

for file_path in changed_files_paths:
  update_timestamp(file_path)
