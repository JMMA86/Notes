## Delete One Document

The following code shows an example of the `deleteOne()` method:

```
db.podcasts.deleteOne({ _id: Objectid("6282c9862acb966e76bbf20a") })
```

## Delete Many Documents

The following code shows an example of the `deleteMany()` method:

```
db.podcasts.deleteMany({category: “crime”})
```

