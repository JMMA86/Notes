# Creating a Single Field Index

Review the code below, which demonstrates how to create a single field index in a collection.
## Create a Single Field Index

Use `createIndex()` to create a new index in a collection. Within the parentheses of `createIndex()`, include an object that contains the field and sort order.

```json
db.customers.createIndex({
  birthdate: 1
})
```

## Create a Unique Single Field Index

Add `{unique:true}` as a second, optional, parameter in `createIndex()` to force uniqueness in the index field values. Once the unique index is created, any inserts or updates including duplicated values in the collection for the index field/s will fail.

```json
db.customers.createIndex({
  email: 1
},
{
  unique:true
})
```

MongoDB only creates the unique index if there is no duplication in the field values for the index field/s.  

## View the Indexes used in a Collection

Use `getIndexes()` to see all the indexes created in a collection.

```json
db.customers.getIndexes()
```
## Check if an index is being used on a query

Use `explain()` in a collection when running a query to see the Execution plan. This plan provides the details of the execution stages (IXSCAN , COLLSCAN, FETCH, SORT, etc.).

- The `IXSCAN` stage indicates the query is using an index and what index is being selected.
- The `COLLSCAN` stage indicates a collection scan is perform, not using any indexes.
- The `FETCH` stage indicates documents are being read from the collection.
- The `SORT` stage indicates documents are being sorted in memory.

```json
db.customers.explain().find({
  birthdate: {
    $gt:ISODate("1995-08-01")
    }
  })
```

```json
db.customers.explain().find({
  birthdate: {
    $gt:ISODate("1995-08-01")
    }
  }).sort({
    email:1
    })
```

## Multi-key indexes

Multikeys  can index primitives, documents or sub documents, this index can be  single field or compound index. There must be only one array field per index.

## Create a Single field Multikey Index

Use `createIndex()` to create a new index in a collection. Include an object as parameter that contains the array field and sort order. In this example `accounts` is an array field.

```json
db.customers.createIndex({
  accounts: 1
})
```

## View the Indexes used in a Collection

Use `getIndexes()` to see all the indexes created in a collection.

```json
db.customers.getIndexes()
```

## Check if an index is being used on a query

Use `explain()` in a collection when running a query to see the Execution plan. This plan provides the details of the execution stages (IXSCAN , COLLSCAN, FETCH, SORT, etc.).

- The `IXSCAN` stage indicates the query is using an index and what index is being selected.
- The `COLLSCAN` stage indicates a collection scan is perform, not using any indexes.
- The `FETCH` stage indicates documents are being read from the collection.
- The `SORT` stage indicates documents are being sorted in memory.

```json
db.customers.explain().find({
  accounts: 627788
  })
```

---

## Create a Compound Index

Use `createIndex()` to create a new index in a collection. Within the parentheses of `createIndex()`, include an object that contains two or more fields and their sort order.

```
db.customers.createIndex({
  active:1, 
  birthdate:-1,
  name:1
})
```

## Order of Fields in a Compound Index

The order of the fields matters when creating the index and the sort order. It is recommended to list the fields in the following order: Equality, Sort, and Range.

- Equality: field/s that matches on a single field value in a query
- Sort: field/s that orders the results by in a query
- Range: field/s that the query filter in a range of valid values

The following query includes an equality match on the active field, a sort on birthday (descending) and name (ascending), and a range query on birthday too.

```json
db.customers.find({
  birthdate: {
    $gte:ISODate("1977-01-01")
    },
    active:true
    }).sort({
      birthdate:-1, 
      name:1
      })
```

Here's an example of an efficient index for this query:

```json
db.customers.createIndex({
  active:1, 
  birthdate:-1,
  name:1
})
```

## View the Indexes used in a Collection

Use `getIndexes()` to see all the indexes created in a collection.

```json
db.customers.getIndexes()
```

## Check if an index is being used on a query

Use `explain()` in a collection when running a query to see the Execution plan. This plan provides the details of the execution stages (IXSCAN , COLLSCAN, FETCH, SORT, etc.). Some of these are:

- The `IXSCAN` stage indicates the query is using an index and what index is being selected.
- The `COLLSCAN` stage indicates a collection scan is perform, not using any indexes.
- The `FETCH` stage indicates documents are being read from the collection.
- The `SORT` stage indicates documents are being sorted in memory.

```json
db.customers.explain().find({
  birthdate: {
    $gte:ISODate("1977-01-01")
    },
  active:true
  }).sort({
    birthdate:-1,
    name:1
    })
```

##   Cover a query by the Index

An Index covers a query when MongoDB does not need to fetch the data from memory since all the required data is already returned by the index.

In most cases, we can use projections to return only the required fields and cover the query. Make sure those fields in the projection are in the index.

By adding the projection `{name:1,birthdate:1,_id:0}` in the previous query, we can limit the returned fields to only `name` and `birthdate`. These fields are part of the index and when we run the `explain()` command, the execution plan shows only two stages:

- IXSCAN - Index scan using the compound index
- PROJECTION_COVERED - All the information needed is returned by the index, no need to fetch from memory

```json
db.customers.explain().find({
  birthdate: {
    $gte:ISODate("1977-01-01")
    },
  active:true
  },
  {name:1,
    birthdate:1, 
    _id:0
  }).sort({
    birthdate:-1,
    name:1
    })
```

---

## View the Indexes used in a Collection

Use `getIndexes()` to see all the indexes created in a collection. There is always a default index in every collection on _id field. This index is used by MongoDB internally and cannot be deleted.

```json
db.customers.getIndexes()
```

## Delete an Index

Use `dropIndex()` to delete an existing index from a collection. Within the parentheses of `dropIndex()`, include an object representing the index key or provide the index name as a string.

Delete index by name:

```json
db.customers.dropIndex(
  'active_1_birthdate_-1_name_1'
)
```

Delete index by key:

```json
db.customers.dropIndex({
  active:1,
  birthdate:-1, 
  name:1
})
```

## Delete Indexes

Use `dropIndexes()` to delete all the indexes from a collection, with the exception of the default index on _id.

```json
db.customers.dropIndexes()
```

The `dropIndexes()` command also can accept an array of index names as a parameter to delete a specific list of indexes.

```json
db.collection.dropIndexes([
  'index1name', 'index2name', 'index3name'
  ])
```