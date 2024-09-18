One can use commands like: `replaceOne` to change an specific value as an Id.

```json
db.<collection>.replaceOne(filter, replacement, options)
```

```json
db.birds.replaceOne({_id: "ObjectId('6286809e2f3fa87b7d86dccd')"}, {"common_name": "Morning Dove","scientific_name": "Zenaida macroura","wingspan_cm": 37.23,"habitat": ["urban areas", "farms", "grassland"],"diet": ["seeds"]})
```

## Updating documents

```json
db.collection.updateOne(
	<filter>,
	<update>,
	{option}
)
```

We can use operators to perform the update in different ways:
- `$set`: Replaces the value of a field with a specified value / adds new fields and values to a document.
- `$push`: Appends a value to an array / If absent, `$push` adds the array field with the value as its elements

### $set

```json
db.podcasts.updateOne(
  {
    _id: ObjectId("5e8f8f8f8f8f8f8f8f8f8f8"),
  },

  {
    $set: {
      subscribers: 98562,
    },
  }
)
```

#### Upsert option
The `upsert` option creates a new document if no documents match the filtered criteria. Here's an example:

```json
db.podcasts.updateOne(
  { title: "The Developer Hub" },
  { $set: { topics: ["databases", "MongoDB"] } },
  { upsert: true }
)
```

### $put
The `$push` operator adds a new value to the `hosts` array field. Here's an example:

```json
db.podcasts.updateOne(
  { _id: ObjectId("5e8f8f8f8f8f8f8f8f8f8f8") },
  { $push: { hosts: "Nic Raboy" } }
)
```

### findAndModify()

Returns a document that hast just being updated. Does the find() and modify() part in just one step.

The `findAndModify()` method is used to find and replace a single document in MongoDB. It accepts a filter document, a replacement document, and an optional options object. The following code shows an example:

```json
db.podcasts.findAndModify({
  query: { _id: ObjectId("6261a92dfee1ff300dc80bf1") },
  update: { $inc: { subscribers: 1 } },
  new: true,
})
```

## updateMany()

This is a function that works for many documents the operator of update, but with the consequence that this is not atomic. That means that if something fails at the middle, nothing will be changed back.

```json
db.books.updateMany(
  { publishedDate: { $lt: new Date("2019-01-01") } },
  { $set: { status: "LEGACY" } }
)
```

