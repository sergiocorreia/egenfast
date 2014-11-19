egenfast: because __egen__ is too slow
========

Provide some fast alternatives to __egen__ functions
To make it fast we make both design tradeoffs and minor improvements

Functions currently supported:
- **max** (tip: this is equivalent to a any() function when combined with a == expression)

Installation:
```stata
net install egenfast , from(https://github.com/sergiocorreia/egenfast/raw/master/)
```
