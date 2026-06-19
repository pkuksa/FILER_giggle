NOTE: this repository contains `FILER_giggle`, an updated/customized version of Giggle [https://github.com/ryanlayer/giggle](https://github.com/ryanlayer/giggle) as used by the [FILER](https://lisanwanglab.org/FILER) project. This updated version focuses on BED file handling, in particular the indexing and searching of the interval in BED-based notation (0-based, half-open intervals).
Additionally, minor updates include BED header handling and output of overlaps in BED format.

Original FILER_giggle version used in FILER publication is 0.6.3fsb (as of April 2021).

Current FILER_giggle version is 0.6.3fsbv (as of July 2022).

```
FILER_giggle/bin/giggle search

giggle, v0.6.3fsbv
usage:   giggle search -i <index directory> [options]
         options:
             -i giggle index directory
             -r <regions (CSV)>
             -q <query file>
             -b print results in BED format (only for per query -o, -o -v outputs)
             -o give reuslts per record in the query file (omits empty results)
             -c give counts by indexed file
             -s give significance by indexed file (requires query file)
             -v give full record results
             -f print results for files that match a pattern (regex CSV)
             -g genome size for significance testing (default 3095677412)
             -l list the files in the index

```

### Installing on macOS with Homebrew:
```
brew install pkuksa/tap/filer-giggle
```
or:
```
brew tap pkuksa/tap
brew install filer-giggle
```
The installed executable is:
```
giggle
```

### Installing on Linux with Homebrew:
1. install Homebrew if it's not installed yet:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Follow any additional shell setup commands printed by the Homebrew installer.
3. Install FILER giggle:
```
brew install pkuksa/tap/filer-giggle
```

The installed executable is:
```
giggle
```

### Windows / WSL

Native Windows is not supported directly. On Windows, use WSL 2 with a Linux
distribution such as Ubuntu 24.04.

Inside WSL 2:

1.
```
sudo apt update
sudo apt install build-essential
```
2. Install Homebrew using the Linux Homebrew instructions above

3. Install FILER giggle:
   
```
brew install pkuksa/tap/filer-giggle
```

WSL 1 is *not* recommended.


### Building from source (outside of Homebrew)
 
#### Install the giggle dependencies: 
##### On Ubuntu / Debian:
```
sudo apt install gcc make autoconf zlib1g-dev libbz2-dev libcurl4-openssl-dev libssl-dev ruby
```
##### On CentOS Stream / RHEL / Fedora:
```
sudo dnf groupinstall "Development Tools"
sudo dnf install autoconf zlib-devel bzip2-devel libcurl-devel openssl-devel ruby
```

#### Clone repository and compile:
```
git clone https://github.com/pkuksa/FILER_giggle.git
cd FILER_giggle
make
```
Giggle binary will be available under `FILER_giggle/bin/giggle`

NOTE: On MacOS, if make fails may need to run
```
make clean
make -f Makefile.macos
```
instead. Note that specific versions of autoconf (e.g., 2.69) may be required for successful installation.

Verify `FILER_giggle/bin/giggle` can be executed successfully.

**Contact**: [filer@lisanwanglab.org](mailto:filer@lisanwanglab.org)
