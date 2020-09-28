# Cleaning up disrespectful terms in existing systems

## Checklist for renaming `master` to `main`

- [ ] Create a new branch off `master`

```sh
git checkout master
git branch -b main
git push -u origin main
```

- [ ] On GitHub, go to **Settings** &rarr; **Branches**, and set `main` as the default branch.
- [ ] Change the base on existing pull requests
- [ ] Search and Replace `master` in the project (README.md, etc.)
- [ ] If automatic deployments are turned on, remember to update the branch.
- [ ] If CodeClimate is set up remember to update the branch there as well.
- [ ] Once everything is set, you can delete the `master` branch
```sh
git branch -d master
git push origin --delete master
```
