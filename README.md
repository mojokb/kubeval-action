# kubeval-action

A [GitHub Action](https://github.com/features/actions) for using [Kubeval](https://github.com/mojokb/kubeval-action) in your workflows.

You can use the action as follows:

```yaml
on: push
name: Validate
jobs:
  kubeval:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: test
      uses: mojokb/kubeval-action@master
```


| Property | Default | Description |
| --- | --- | --- |
| files | . | Which files or directories to validate |
| output | stdout | How to format the output from Conftest (stdout, json or tap) |
| ignore_missing_schemas | true | Whether to fail if unknown resources are found |
| schema_location | https://raw.githubusercontent.com/mojokb/kubernetes-json-schema/master | Base URL used to download schemas. Base URL contains the argo-workflow Schemas. |

