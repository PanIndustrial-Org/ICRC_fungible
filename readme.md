# ICRC-1, ICRC-2, and ICRC-3 Fungible Token

## Overview
This project is focused on the development and implementation of a fungible token standard, utilizing blockchain or distributed ledger technology. The core of the project is written in Motoko and is compatibility with the DFINITY Internet Computer platform.

## Contents
- `dfx.json`: Configuration file for project settings and canister definitions.
- `mops.toml`: Dependency management file listing various Motoko libraries and tools.
- `runners/test_deploy.sh`: Script for testing or deploying the token system.
- `runners/prod_deploy.sh`: Script for deploying to production token system.
- `src/Token.mo`: Source code for the token system written in Motoko.
- `src/examples/Allowlist.mo`: Source code for the a token who is limited to an allow list of users who can send tokens, but anyone can receive them. See the source file for more information.
- `src/examples/Lotto.mo`: Source code for a token where whenever you burn tokens you have a chance to double your tokens. See the source file for more information.

## Setup and Installation
1. **Environment Setup**: Ensure you have an environment that supports Motoko programming. This typically involves setting up the [DFINITY Internet Computer SDK](https://internetcomputer.org/docs/current/references/cli-reference/dfx-parent) and [mops tool chain](https://docs.mops.one/quick-start).
2. **Dependency Installation**: Install the dependencies listed in `mops.toml`. `mops install`.
3. **Configuration**: Adjust `dfx.json` and `mops.toml` according to your project's specific needs, such as changing canister settings or updating dependency versions.

## Usage
- **Development**: Modify and enhance `src/Token.mo` as per your requirements. This file contains the logic and structure of the fungible token system.
- **Testing and Deployment**: Use `runners/test_deploy.sh` for deploying the token system to a test or development environment. This script may need modifications to fit your deployment process.
- **Production Deployment**: Use `runners/prod_deploy.sh` for deploying the token system to a main net environment. This script will need modifications to fit your deployment process.

## Dependencies
- DFX and Mops
- Additional dependencies are listed in `mops.toml`. Ensure they are properly installed and configured.

## Contribution and Development Guidelines
- **Coding Standards**: Adhere to established Motoko coding practices. Ensure readability and maintainability of the code.
- **Testing**: Thoroughly test any new features or changes in a controlled environment before integrating them into the main project.
- **Documentation**: Update documentation and comments within the code to reflect changes or additions to the project.

## Repository
- [Project Repository](https://github.com/PanIndustrial-Org/ICRC_fungible)

## License
- MIT License

## Contact
- **Contributing**: For contributing to this project, please submit a pull request to the repository.
