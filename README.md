#  Sample app to demonstrate file variant selection based on Xcode Configuration

![Overview](/docs/Overview.png)


1. To control which files to swallow in a dummy Build Rule we will create a separate Xcode Configuration with User-Defined Setting (e.g. CONFIGURATION_VARIANT)
2. Process all Swift files that end with a single-character postfix other than CONFIGURATION_VARIANT
```
*_[^$(CONFIGURATION_VARIANT)].swift
```
3. Create in a derived directory an empty file (with _skipped postfix)
```
> "$DERIVED_FILE_DIR/${INPUT_FILE_NAME}_skipped.swift"
```
4. Specify that Xcode should process just created empty file instead of an original one

![CustomRule](/docs/BuildRules.png)
