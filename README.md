Clone or update all repositories

```bash
bash get-all.sh
```

Check which repositories might need an update

```bash
bash needs-update.sh
```

output looks like : 

```
postcss-write-svg
  - has postcss dependency : ^5.2.6
  - https://github.com/csstools/postcss-write-svg

precss
  - has postcss dependency : ^7.0.6
  - https://github.com/csstools/precss
```

## Upgrade guide

### References

- https://evilmartians.com/chronicles/postcss-8-plugin-migration
- https://postcss.org/api/

### Example PRs

- https://github.com/csstools/css-has-pseudo/pull/8/files
- https://github.com/csstools/postcss-at-else/pull/2/files
