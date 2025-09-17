![US Flights](assets/travel.png)

## US Flights API    

Sample project to show how to organize a Rust API project with multiple crates and modules.

#### Pre-requisites
* Install **llvm** to linking faster
```
sudo dnf install lld clang
```
* Install **cargo-watch** to auto-rebuild on file changes
```cmd
cargo install cargo-watch
```
* Install **cargo-tarpaulin** go run tests with coverage
```cmd
cargo install cargo-tarpaulin
``` 
* Add **clippy** to lint code
```cmd
rustup component add clippy
```
* Add **rustfmt** to format code
```cmd
rustup component add rustfmt
```
* Install **cargo-audit** to check for vulnerabilities in dependencies
```cmd
cargo install cargo-audit
```
* Install **cargo expand** to expand macros in code
```cmd
cargo install cargo-expand
```
* Install **sqlx-cli**
```cmd
cargo install --version=0.5.7 sqlx-cli --no-default-features --features postgres
```
Check running **sqlx --help** 

* To **execute**, use
```cmd
cargo run
```

#### Setup PostgreSQL Database

* Create database executing over psql console
```cmd
psql -U postgres --host=<host> -d usflights -f createUSFlightsSchema.sql
```
then
```cmd
psql -U postgres --host=<host> -d usflights -f USAirports.sql
psql -U postgres --host=<host> -d usflights -f Carriers.sql
psql -U postgres --host=<host> -d usflights -f Flights.sql
```



[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct_EN.md)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct_ES.md)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct_CA.md) 

