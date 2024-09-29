One can find a document object using this function.

`db.<collection>.find()`

`find()`: Finds all the documents in a collection (`it` can be used to show more by typing it with the `find()` executing).

`find({$eq: "string"}` or `find({data_name: "string"})`: Finds all the matches in a database.

`$in`: Allow us to select all documents that have a field value equal to any of the values specified in an array.

A whole view of this will be:
```json
db.<collection>.find({
	<field>: { $in:
		[<value>, <value>, ...]
	}
})
```

## Finding operators

To use them we have to comply the following syntax:
`<field>: { <operator> : <value> }`

`$gt` (Greater than): `db.sales.find({"items.price": { $gt: 50 })`
`$lt` (Less than): `db.sales.find({"items.price": { $lt: 50 })`
`$lte` (Less than or equal to): `db.sales.find({"items.price": { $lte: 50 })`
`gte` (Greater than or equal to): `db.sales.find({"items.price": { $gte: 50 })`

## Find a Value that has a value

We use the `$elemMatch` as follows:

```json
db.account.find({
	products: {
		$elemMatch: {$eq: "InvestmentStock"}
	}
})
```

We can also use it to find a criteria:
```json
{<field>: { $elemMatch:
	{
		<query1>,
		<query2>,
		...
	}
}}
```

## Filtering using logical operators

We can filter in a query using logical operators in the find function, those are `$and` and `$or`.

```json
db.<collection>.find({
	$and: [
		{<expression>},
		{<expression>},
		{<expression>},
		...
	]
})
```

Or we can do as follows: 
```json
db.<collection>.find({<expression>, <expression>})
```

Now the logical or:
```json
db.<collection>.find({
	$or: [
		{<expression>},
		{<expression>},
		{<expression>},
		...
	]
})
```

They can be concatenated:
```json
db.routes.find({
	$and: [
		{ $or: [
			{dst_airport: "SEA"},
			{src_airport: "SEA"}
		]},
		{$or: [
			{airline: "American Airlines"},
			{airplane: 320}
		]},
	]
})
```

