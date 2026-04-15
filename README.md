# Rexadb Homebrew Tap

Install rexadb using Homebrew:

```bash
brew tap rexadbapp/tap
brew install rexadb
```

## Commands

```bash
rexadb start postgres dev -n myapp      # Start database
rexadb status                          # Check status
rexadb stop dev                        # Stop instance
rexadb logs dev                        # View logs
rexadb verify dev                      # Verify connectivity
```

## Requirements

- PostgreSQL must be installed:
  ```bash
  brew install postgresql
  ```

## Updating

```bash
brew upgrade rexadb
```
