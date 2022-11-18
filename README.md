# close-pull-requests-limit
Closes new pull requests when the limit of opened pull requests is reached.

## Usage

In order to use this action in your workflow, add this file to `.github/workflows/YOURACTION.yml`

```yml
name: Close pull requests beyond limit

on:
  schedule:
    - cron: "*/30 * * * *"
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: mjerem34/close-pull-requests-limit@1.0.0
        with:
          github_private_token: "" # REQUIRED
          limit: "" # REQUIRED
          comment: "" # NOT REQUIRED
          pull_request_number: "" # REQUIRED
          repository: "" # REQUIRED
```

## License

MIT.
