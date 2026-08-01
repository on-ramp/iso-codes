# iso-codes
[![docs](https://img.shields.io/github/actions/workflow/status/on-ramp/iso-codes/pages/pages-build-deployment?logo=github&label=docs)](https://on-ramp.github.io/iso-codes/)


A Haskell library for handling ISO 3166-1 country codes, ISO 4217 currency codes and
ISO 639 language codes.

It deviates quite a bit from how these libraries are typically structured:

- Natural-language names for any of the codes are not supported, as interpreting these
  in either direction is inherently ambiguous;

- (ISO 3166, ISO 4217) No "default" serialization instances for the types, these
  are instead provided over a special tagged type `As`
  (`Show` is a notable exception, as it is used for debugging).

- (ISO 4217) Precious metals are not supported. Codes for funds are not provided.

Instances for `aeson`, `http-api-data` and `postgresql-simple` are provided out of the box
for user convenience.


## Datasets

Dataset updates are to be applied to the repository by updating the respective dataset file
(located in `/dataset/*`) and matching it with a new revision in the corresponding
`ISO.*.Revisions` module, with code pattern synonyms added/removed in `ISO.*.Codes`.
The replaced revision should then be reframed in terms of the new one.

Sources for dataset files:

- ISO 3166-1: [ipregistry/iso3166](https://github.com/ipregistry/iso3166/blob/df24162adec13f2e70e6f3197dcc07303da3091e/countries.csv);

- ISO 4217: [SIX Group](https://www.six-group.com/dam/download/financial-information/data-center/iso-currrency/lists/list-one.xml);

- ISO 639: [SIL Global](https://iso639-3.sil.org/sites/iso639-3/files/downloads/iso-639-3.tab).
