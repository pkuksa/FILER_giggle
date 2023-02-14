NOTE: this repository contains `FILER_giggle`, an updated/customized version of Giggle [https://github.com/ryanlayer/giggle](https://github.com/ryanlayer/giggle) as used by the [FILER](https://lisanwanglab.org/FILER) project. This updated version focuses on BED file handling, in particular the indexing and searching of the interval in BED-based notation (0-based, half-open intervals).
Additionally, minor updates include BED header handling and output of overlaps in BED format.

To install:
 
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
instead. Note that specific versions of autoconf (e.g., 2.69) may be required for successuful installation.

Verify `FILER_giggle/bin/giggle` can be executed successfully.

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

**Contact**: [filer@lisanwanglab.org](mailto:filer@lisanwanglab.org)
