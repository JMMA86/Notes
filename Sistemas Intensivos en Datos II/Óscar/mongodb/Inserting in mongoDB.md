# insertOne()

`db.<collection>.insertOne()`

If the collection needed doesn't exists mongodb will auto create the collection when using the `insertOne()`.

# insertMany()
`db.<collection>.insertMany()`
```
db.grades.insertMany([
  {
    student_id: 546789,
    products: [
      {
        type: "quiz",
        score: 50,
      },
    ],
    class_id: 551,
  },
  {
    student_id: 777777,
    products: [
      {
        type: "exam",
        score: 83,
      },
    ],
    class_id: 550,
  },
  {
    student_id: 223344,
    products: [
      {
        type: "exam",
        score: 45,
      },
    ],
    class_id: 551,
  },
])
```

