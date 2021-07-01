# Clear Output for Jupyter Notebooks with Git

It's important to avoid sharing private or sensitive data within notebooks via the output cells. It's also useful to reserve the output when working with a notebook locally. To help ensure what's stored in git does not retain any sensitive output while also being able to still view and save the output locally, use the following steps.

_Credit goes to dirkjot via this [Stack Overflow answer](https://stackoverflow.com/a/58004619)._

|**:warning: PLEASE NOTE**|
|:---------------------------|
| Following these steps does not remove the responsibility of checking your commits and/or resolving any errors! For instance, if `nbconvert` fails, you may still have sensitive data output inside Jupyter notebook output cells (and as a result, in your commits). |

## Steps

1. Edit your local or global git config ( `.git/config or ~/.gitconfig` )
1. Add the following to the local or global git config and save it:
```
[filter "strip-notebook-output"]
    clean = "jupyter nbconvert --ClearOutputPreprocessor.enabled=True --to=notebook --stdin --stdout --log-level=ERROR"
```
1. Create or add to the `.gitattributes` file in your repo (nesting as appropriate to your needs).
1. Add the following to the `.gitattributes` file and save it:
```
*.ipynb filter=strip-notebook-output
```
